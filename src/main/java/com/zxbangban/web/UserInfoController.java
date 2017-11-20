package com.zxbangban.web;

import com.zxbangban.entity.UserInfo;
import com.zxbangban.util.MD5Util;
import com.zxbangban.service.UserInfoService;
import com.zxbangban.util.WXAutoUtil;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Date;

/**
 * Created by pingyr on 2017/7/13.
 */
@Controller
@RequestMapping("/account")
@SessionAttributes({"uid","headimg","unionid"})
public class UserInfoController {

    @Autowired
    private UserInfoService userInfoService;


    @RequestMapping("/signin")
    public String signin(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse,Model model){
        if(httpServletRequest.getSession().getAttribute("uid") == null){
            return "signin";
        }else {
            String uid = (String) httpServletRequest.getSession().getAttribute("uid");
            Cookie[] cookies = httpServletRequest.getCookies();
            if(cookies != null){
                for(Cookie cookie : cookies){
                    if(cookie.getName().equals("uid")){
                        cookie.setValue(uid);

                    }else {
                        cookie = new Cookie("uid",uid);
                    }
                    model.addAttribute("uid",uid);
                    cookie.setPath("/");
                    httpServletResponse.addCookie(cookie);
                }
            }
            return "redirect:/home";
        }
    }

    @RequestMapping("/signup")
    public String signUp(){
        return "signup";
    }

    @RequestMapping("/weixinlogin")
    public void weiXinLogin(HttpServletResponse httpServletResponse,Model model){
        String url = "https://open.weixin.qq.com/connect/qrconnect?appid=" + WXAutoUtil.appId +
                "&redirect_uri=https%3a%2f%2fwww.zxbangban.com%2faccount%2fwxtoken&response_type=code&scope=snsapi_login&state=STATE#wechat_redirect";
        httpServletResponse.setContentType("text/html;charset=UTF-8");
        try {
            httpServletResponse.sendRedirect(url);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @RequestMapping(value = "/wxtoken")
    public String wxtoken(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse,Model model){
        httpServletResponse.setContentType("text/html;charset=UTF-8");
        String code = httpServletRequest.getParameter("code");
        String url1 = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + WXAutoUtil.appId + "&secret=" + WXAutoUtil.appSecret +
                "&code=" + code + "&grant_type=authorization_code";
        try {
            JSONObject jsonObject1 = WXAutoUtil.doGetJson(url1);
            String access_token = jsonObject1.getString("access_token");
            String refresh_token = jsonObject1.getString("refresh_token");
            String openid = jsonObject1.getString("openid");
            String unionid = jsonObject1.getString("unionid");
            String url2 = "https://api.weixin.qq.com/sns/userinfo?access_token=" + access_token + "&openid=" + openid;
            JSONObject jsonObject2 = WXAutoUtil.doGetJson(url2);
            String nickname = URLEncoder.encode(jsonObject2.getString("nickname"),"UTF-8");
            String headimgurl = URLEncoder.encode(jsonObject2.getString("headimgurl"),"UTF-8");
            httpServletResponse.setCharacterEncoding("utf-8");
            Cookie usernickname = new Cookie("uid", nickname);
            Cookie userheadimg = new Cookie("headimg",headimgurl);
            Cookie userunionid = new Cookie("unionid",unionid);
            usernickname.setPath("/");
            userheadimg.setPath("/");
            userunionid.setPath("/");
            httpServletResponse.addCookie(usernickname);
            httpServletResponse.addCookie(userheadimg);
            httpServletResponse.addCookie(userunionid);
            HttpSession httpSession = httpServletRequest.getSession();
            httpSession.setAttribute("uid",nickname);
            httpSession.setAttribute("unionid",unionid);
            httpSession.setAttribute("headimg",headimgurl);
            model.addAttribute("uid",nickname);
            model.addAttribute("unionid",unionid);
            model.addAttribute("headimg",headimgurl);
            return "redirect:/home";
        } catch (IOException e) {
            e.printStackTrace();
            return "signin";
        }

    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, @RequestParam("name") String name,
                           @RequestParam("password")String password, @RequestParam("tel")String tel, Model model){
        try {
            UserInfo userInfo = userInfoService.queryByUsername(name);
            if(userInfo == null){
                userInfoService.newWorkerInfo(new UserInfo(name, MD5Util.EncryptedByMD5(password),new Date(),tel));

                Cookie ucookie = new Cookie("uid",name);
                ucookie.setPath("/");
                httpServletResponse.addCookie(ucookie);
                String exnamesession = (String) httpServletRequest.getSession().getAttribute("uid");
                if(exnamesession != null){
                    httpServletRequest.getSession().removeAttribute("uid");
                }
                model.addAttribute("uid",name);
                return "redirect:/home";

            }else {
                model.addAttribute("errormsg","用户名已存在！");
                return "signup";
            }

        }catch (Exception e){
            e.printStackTrace();
            model.addAttribute("errormsg","用户名已存在！");
            return "/signup";
        }
    }
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse,
                        @RequestParam("username")String username,@RequestParam("password")String password,Model model){
        try{
            UserInfo userInfo = userInfoService.queryByUsername(username);
            if(MD5Util.EncryptedByMD5(password).equals(userInfo.getPassword())){
                httpServletResponse.setCharacterEncoding("utf-8");
                Cookie usercookie = new Cookie("uid",username);
                Cookie userheadimg = new Cookie("headimg", userInfo.getHeadImgUrl());
                usercookie.setPath("/");
                userheadimg.setPath("/");
                httpServletResponse.addCookie(usercookie);
                httpServletResponse.addCookie(userheadimg);
                HttpSession httpSession = httpServletRequest.getSession();
                httpSession.setAttribute("uid",username);
                httpSession.setAttribute("headimg", userInfo.getHeadImgUrl());
                model.addAttribute("uid",username);
                model.addAttribute("headimg", userInfo.getHeadImgUrl());
                return "redirect:/home";
            }else {
                model.addAttribute("errormsg","用户名或密码错误！");
                return "signin";
            }

        }catch (Exception e){
            model.addAttribute("errormsg","用户名或密码错误！");
            return "signin";
        }

    }
    @RequestMapping(value = "/exit")
    public String exit(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse){
        Cookie[] cookies = httpServletRequest.getCookies();
        if(cookies != null){
            for(Cookie cookie : cookies){
                if(cookie.getName().equals("uid")){
                    cookie.setValue(null);

                }else if(cookie.getName().equals("authen")){
                    cookie.setValue(null);
                }
                cookie.setMaxAge(0);
                cookie.setPath("/");
                httpServletResponse.addCookie(cookie);
            }
        }
        return "redirect:/home";
    }
}
