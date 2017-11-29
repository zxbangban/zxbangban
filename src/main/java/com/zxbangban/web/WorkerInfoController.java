package com.zxbangban.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.entity.WorkerProfile;
import com.zxbangban.service.AliyunMNService;
import com.zxbangban.service.WorkerInfoService;
import com.zxbangban.service.WorkerProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * Created by pingyr on 2017/7/11.
 */
@Controller
@RequestMapping("/w")
public class WorkerInfoController {

    @Autowired
    private WorkerInfoService workerInfoService;

    @Autowired
    private WorkerProfileService workerProfileService;

    @Autowired
    private AliyunMNService aliyunMNService;

    @RequestMapping(value = "/category")
    public String category(){
        return "workerlist";
    }

    @RequestMapping(value = "/jobid={id}/finder",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String workerFinder(@PathVariable("id") Integer id){
        List<WorkerInfo> workerInfoList =workerInfoService.showWorkersByJobId(id);
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.writeValueAsString(workerInfoList);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return "common/errorpage";
        }

    }
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(@RequestParam("name")String name,@RequestParam("tel")String tel,@RequestParam("jobId")Integer jobId,Model model){
        WorkerInfo workerInfo = new WorkerInfo();
        workerInfo.setName(name);
        workerInfo.setTel(tel);
        workerInfo.setJobId(jobId);
        workerInfo.setCreateTime(new Date());
        try{
            workerInfoService.newWorkerInfo(workerInfo);
            aliyunMNService.notificationWorker("15234500591");
            return "workerregistsuccess";
        }catch (Exception e){
            return "error";
        }
    }

    @RequestMapping(value = "/find/workerid={workerid}/home")
    public String workerHomepage(@PathVariable("workerid")long workerid,Model model){
        WorkerInfo workerInfo = workerInfoService.queryWorkerByWorkerId(workerid);
        if(workerInfo != null){
            model.addAttribute("workerinfo",workerInfo);
            return "homepage";
        }else {
            return "redirect:/error";
        }
    }

    /**
     * 工人详细属性(工龄，担保金)
     */
    @RequestMapping(value = "/profile/finder",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String workerProfileFinder(@RequestParam("id")String id){
        WorkerProfile workerProfile = workerProfileService.queryByWorkerId(Long.parseLong(id));

        if(workerProfile != null){
            ObjectMapper objectMapper = new ObjectMapper();
            try {
                return   objectMapper.writeValueAsString(workerProfile);
            } catch (JsonProcessingException e) {
                e.printStackTrace();
                return "";
            }
        }else {
            return "";
        }
    }

    /**
     * 更新主页浏览量
     * @param count 浏览量
     */
    @RequestMapping(value = "/updateview",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String pvCount(@RequestParam("wid")long wid,@RequestParam("count") int count){
        Integer r = workerProfileService.queryViewByWorkerId(wid);
        if(r != null){
            return String.valueOf(workerProfileService.updateView(wid,count));
        }else {
            return String.valueOf(workerProfileService.updateNewView(new WorkerProfile(wid,count)));
        }

    }


    /**
     * 工人详细属性
     * @return 已预约人数
     */
    @RequestMapping(value = "/appointed/finder",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String workerAppointed(@RequestParam("id")String id){
        return "";
    }

    /**
     * 工人详细属性
     * @return 工人工程订单详情
     */
    @RequestMapping(value = "/orderdetail/finder",method = RequestMethod.GET,produces = "text/html;charset=utf8")
    @ResponseBody
    public String orderDetail(@RequestParam("id")long id){

        return workerInfoService.queryProjectImgByWorkerId(id);
    }
}
