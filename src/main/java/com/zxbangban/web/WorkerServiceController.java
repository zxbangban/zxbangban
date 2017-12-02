package com.zxbangban.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zxbangban.dto.Worker;
import com.zxbangban.dto.WorkerDetail;
import com.zxbangban.entity.Jobs;
import com.zxbangban.entity.UserInfo;
import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.entity.WorkerProfile;
import com.zxbangban.enums.TypesOfWorkers;
import com.zxbangban.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/worker-console")
@SessionAttributes({"uid", "auth"})
public class WorkerServiceController {
    @Autowired
    private WorkerService workerService;

    @Autowired
    private WorkerInfoService workerInfoService;

    @Autowired
    private WorkerProfileService workerProfileService;

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private AliyunMNService aliyunMNService;

    @Autowired
    private AliyunOSService aliyunOSService;

    @Autowired
    private JobsService jobsService;

    @RequestMapping(value = "/home",method = RequestMethod.GET, produces = "text/html;charset=utf8")
    public String home(@SessionAttribute("uid") String uid,@RequestParam("j") String j, Model model) {
        try{
            UserInfo userInfo = userInfoService.queryByUsername(uid);
            Integer roleId = userInfo.getRoleId();
            if (roleId.equals(5) || roleId.equals(7) || roleId.equals(8)) {
                List<Worker> workers = workerService.queryWorkersByJob(j);
                int count;
                if(j.equals("ALL")){
                    count = workerInfoService.countWorkers();
                }else {
                    count = workerInfoService.countWorkersByJoBId(TypesOfWorkers.valueOf(j).getJobId());
                }

                List<Jobs> jobsList = jobsService.getJobs();
                model.addAttribute("count",count);
                model.addAttribute("jobs",jobsList);
                model.addAttribute("workers", workers);

                return "account/worker_service_home";
            } else {
                model.addAttribute("msg", "权限等级不够!");
                return "account/worker_service_home";
            }
        }catch (NullPointerException e){
            e.printStackTrace();
            return "signin";
        }


    }



    @RequestMapping(value = "/notification", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String notification(@RequestParam("wid") long wid) {
        WorkerInfo workerInfo = workerInfoService.queryWorkerByWorkerId(wid);
        String tel = workerInfo.getTel();
        boolean cert = workerInfo.isCertificated();
        System.out.println(wid + "; "+ tel +"; "+ cert);
        if (tel.length() == 11) {
            if(cert){
                return aliyunMNService.SMSNotification(5,tel);
            }
                return aliyunMNService.SMSNotification(2,tel);

        } else {
            return "failure";
        }

    }
    @RequestMapping(value = "/changeStateTrue",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String changeStateTrue(@RequestParam("wid") long wid){
        int result = workerInfoService.changeStateTrue(wid);
        return String.valueOf(result);
    }

    @RequestMapping(value = "/changeStateFalse",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String changeStateFalse(@RequestParam("wid") long wid){
        int result = workerInfoService.changeStateFalse(wid);
        return String.valueOf(result);
    }

    @RequestMapping(value = "/banned", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String banned(@RequestParam("wid") long wid) {
        int r = workerInfoService.updateIsNotShow(wid);
        return String.valueOf(r);
    }

    @RequestMapping(value = "/unbanned", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String unbanned(@RequestParam("wid") long wid) {
        int r = workerInfoService.updateIsShow(wid);
        return String.valueOf(r);
    }

    @RequestMapping(value = "/del",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String delete(@RequestParam("wid") long wid){
        int result1 = workerInfoService.deleteWorkerInfo(wid);
        int result2 = workerProfileService.deleteWorkerProfile(wid);
        return String.valueOf(result1);
    }

    @RequestMapping(value = "/detail", method = RequestMethod.GET, produces = "text/html;charset=utf8")
    @ResponseBody
    public String manager(@RequestParam("wid") long wid) {
        WorkerInfo workerInfo = workerInfoService.queryDetailByWorkerId(wid);
        WorkerProfile workerProfile = workerProfileService.queryDetailByWorkerId(wid);
        WorkerDetail workerDetail;
        if (workerProfile == null) {
            workerProfileService.updateNewView(new WorkerProfile(wid, 1));
            workerProfile = workerProfileService.queryDetailByWorkerId(wid);
        }
        workerDetail = new WorkerDetail(workerInfo, workerProfile);
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.writeValueAsString(workerDetail);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return "0";
        }

    }

    /**
     * 根据工人id修改工人姓名
     * @param wid 工人id
     * @param name 姓名
     */
    @RequestMapping(value = "/edit-name",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editName(@RequestParam("wid") long wid, @RequestParam("name")String name){
        int r = workerInfoService.editName(wid,name);
        return String.valueOf(r);
    }
    /**
     * 根据工人id修改现所在地
     * @param wid 工人id
     * @param location 现所在地
     */
    @RequestMapping(value = "/edit-location",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editLocation(@RequestParam("wid") long wid, @RequestParam("location")String location){
       int r = workerInfoService.editLocation(wid,location);
        return String.valueOf(r);
    }

    /**
     * 根据工人id修改工人平台认证状态
     * @param wid 工人id
     * @param cert 认证状态
     */
    @RequestMapping(value = "/edit-cert",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editCert(@RequestParam("wid") long wid, @RequestParam("cert")boolean cert){
        int r = workerInfoService.editCert(wid,cert);
        return String.valueOf(r);
    }

    /**
     * 根据工人id修改工人头像
     * @param wid 工人id
     * @param file 姓名
     */
    @RequestMapping(value = "/wid={wid}/edit-headimg",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    public String edithImg(@PathVariable("wid") long wid, @RequestParam(value = "file")MultipartFile file){
        String imgname = aliyunOSService.updateHeadImages(wid,file);
        String imgurl = "https://zxbangban.oss-cn-beijing.aliyuncs.com/" + imgname + "?x-oss-process=style/headimg";
        workerInfoService.editheadimg(wid,imgurl);
        return "redirect:/worker-console/home?j=ALL";
    }

    /**
     * 根据工人id修改工人平台担保金
     * @param wid 工人id
     * @param deposit 担保金
     */
    @RequestMapping(value = "/edit-deposit",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editDeposit(@RequestParam("wid") long wid, @RequestParam("deposit")BigDecimal deposit){
        int r = workerProfileService.editDeposit(wid,deposit);
        return String.valueOf(r);
    }

    /**
     * 根据工人id修改工人工程考察
     * @param wid 工人id
     * @param pr 工程考察
     */
    @RequestMapping(value = "/edit-pr",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String editLevel(@RequestParam("wid") long wid, @RequestParam("pr")boolean pr){
        int r = workerInfoService.editPR(wid,pr);
        return String.valueOf(r);
    }

    @RequestMapping(value = "/edit-weighted",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    @ResponseBody
    public String updateWeight(@RequestParam("wid") long wid,@RequestParam("weighted") double weighted){
        int r = workerProfileService.updateWeightedByWorkerId(wid,weighted);
        int r1 = workerInfoService.updateOARating(wid);
        return String.valueOf(r);
    }

    @RequestMapping(value = "/wid={wid}/edit-programimg",method = RequestMethod.POST,produces = "text/html;charset=utf8")
    public String editProgramImg(@PathVariable("wid") long wid, @RequestParam MultipartFile[] files){
        WorkerInfo workerInfo = workerInfoService.queryDetailByWorkerId(wid);
        String imgUrl = workerInfo.getProjectImgUrl();
        StringBuilder stringBuilder;
        if(imgUrl == null){
            imgUrl = "";
        }
        stringBuilder = new StringBuilder(imgUrl);
        for(MultipartFile item : files){
            String name = aliyunOSService.updateProjectImages(wid,item);
            String url = "https://zxbangban.oss-cn-beijing.aliyuncs.com/" + name + "?x-oss-process=style/Cut_picture";
            stringBuilder.append(";").append(url);
        }
        int result = workerInfoService.editPorjectImg(wid,stringBuilder.toString());
        return "redirect:/worker-console/home?j=ALL";
    }
}
