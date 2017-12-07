package com.zxbangban.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by pingyr on 2017/4/20.
 */
@Controller

public class HomeController {

    /**
     *
     * @return 首页功能跳转控制
     */
    @RequestMapping("/home")
    public String home(){
        return "../../index";
    }

    @RequestMapping("/activity")
    public String activity(){
        return "activity/activity_01";
    }

    @RequestMapping("/about")
    public String online(){
        return "company/about";
    }

    @RequestMapping("/helpcenter")
    public String help_center(){
        return "support/helpcenter";
    }


    @RequestMapping("/customer-service")
    public String customerService(){
        return "support/customerService";
    }
    /**
     *材料品质有保证
     */
    @RequestMapping("/value1")
    public String value1(){
        return "company/values_1";
    }

    /**
     *装修质量有保障
     */
    @RequestMapping("/value2")
    public String value2(){
        return "company/values_2";
    }
    /**
     *工程延期不犯难
     */
    @RequestMapping("/value3")
    public String value3(){
        return "company/values_3";
    }
    /**
     *合同纠纷不纠结
     */
    @RequestMapping("/value4")
    public String value4(){
        return "company/values_4";
    }
    /**
     *售后维权不闹心
     */
    @RequestMapping("/value5")
    public String value5(){
        return "company/values_5";
    }

    /**
     *
     * @return 工人平台资质认证
     */
    @RequestMapping("/aptitude")
    public String apatitude(){
        return "company/worker_aptitude_introduce";
    }

    @RequestMapping("/aptitude_advantages")
    public String aptitudeAdentages(){
        return "company/worker_aptitude_advantages";
    }
    /**
     *
     * @return 网站页脚条款和声明跳转控制
     */
    @RequestMapping("/termsofuse")
    public String termsofuser(){
        return "support/termsofservice";
    }

    /**
     * @return 三维家装饰简介
     */
    @RequestMapping("/three-d-h")
    public String three_d_h(){
        return "/company/three_d_h";
    }

    @RequestMapping("/contact_us")
    public String contact_us(){
        return "/company/contact_us";
    }

    @RequestMapping("/privacy")
    public String privacy(){
        return "support/privacy";
    }

    /**
     * about us
     */
    @RequestMapping("/about-us")
    public String about_us(){
        return "company/about_us";
    }
    /**
     *
     * @return 错误页面跳转
     */
    @RequestMapping("/error")
    public String error(){
        return "common/errorpage";
    }

    /**
     *
     * @return 审批页面跳转控制
     */
    @RequestMapping("/record")
    public String record(){
        return "support/record";
    }


    @RequestMapping("/beta")
    public String warnning(){
        return "beta/warnning";
    }
    @RequestMapping("/comingsoon")
    public String comingsoon(){
        return "beta/comingsoon";
    }

    /**
     *
     * @return 招商页面跳转控制
     */
    @RequestMapping("/shop")
    public String invest(){
        return "shop/home";
    }


    /**
     *
     * @return 装修效果图页面
     */
    @RequestMapping("/effect")
    public String effect(){
        return "effect/effect";
    }

    /**
     *
     * @return 装修效果图列表页面
     */
    @RequestMapping("/details")
    public String details(){
        return "details/details";
    }

    /**
     *
     * @return 招贤纳士
     */
    @RequestMapping("/join")
    public String join(){
        return "join/join";
    }



    /**
     *
     * @return  工人入驻页面跳转
     */
    @RequestMapping("/detail_list")
    public String detailsList(){
        return "details/detail_list";
    }


    /**
     *
     * @return  工人入驻页面跳转
     */
    @RequestMapping("/wokerregister")
    public String workerRegister(){
        return "worker_register";
    }

    /**
     *
     * @return 业主预约页面跳转
     */
    @RequestMapping("/appointment")
    public String appointment(){
        return "appointment/appointment";
    }

    @RequestMapping("/test")
    public String test(){
        return "beta/effect";
    }


    //Brand

    /**
     *
     * @return 家家乐橱柜
     */
    @RequestMapping("/brand/1")
    public String brand1(){
        return "brand/1";
    }

    /**
     *
     * @return 丽绣刺绣墙布
     */
    @RequestMapping("/brand/2")
    public String brand2(){
        return "brand/2";
    }

    /**
     *
     * @return 圣蒂诺壁纸
     */
    @RequestMapping("/brand/3")
    public String brand3(){
        return "brand/3";
    }

    /**
     *
     * @return 适而居定制家具
     */
    @RequestMapping("/brand/4")
    public String brand4(){
        return "brand/4";
    }

    /**
     *
     * @return 亿美达木门
     */
    @RequestMapping("/brand/5")
    public String brand5(){
        return "brand/5";
    }

    /**
     *
     * @return 诺斯菲尔定制家具
     */
    @RequestMapping("/brand/6")
    public String brand6(){
        return "brand/6";
    }

    /**
     *
     * @return 轩艺木门
     */
    @RequestMapping("/brand/7")
    public String brand7(){
        return "brand/7";
    }

    /**
     *
     * @return 爵士雅居
     */
    @RequestMapping("/brand/8")
    public String brand8(){
        return "brand/8";
    }

}
