package com.zxbangban.web;

import com.zxbangban.entity.Customer;
import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.enums.TypesOfWorkers;
import com.zxbangban.service.AliyunMNService;
import com.zxbangban.service.CustomerService;
import com.zxbangban.service.WorkerInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * Created by pingyr on 2017/7/14.
 */
@Controller
@RequestMapping("/c")
@SessionAttributes({"workerid"})
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private WorkerInfoService workerInfoService;

    @Autowired
    private AliyunMNService aliyunMNService;

    /**
     * 顾客预约托管
     * @param name   顾客姓名
     * @param tel   顾客手机号
     * @param location  工程所在地
     * @param model   预约结果信息
     * @return 预约成功页面
     */
    @RequestMapping(value = "/free-appointment",method = RequestMethod.POST)
    public String freeAppointment(HttpServletRequest httpServletRequest, @RequestParam("name") String name, @RequestParam("tel") String tel,
                                  @RequestParam("location") String location,Model model, SessionStatus sessionStatus){
        String workerId = (String) httpServletRequest.getSession().getAttribute("workerid");
        Customer customer = new Customer(name,tel,location,new Date(),"");
        if(workerId != null){
            WorkerInfo workerInfo = workerInfoService.queryWorkerByWorkerId(Long.parseLong(workerId));
            customer.setNotes("预约工人姓名:"+workerInfo.getName() +
                    "; 工人种类:" + TypesOfWorkers.typeOf(workerInfo.getJobId()).getType() +
                    "; 工人平台认证状态:"+workerInfo.isCertificated() +
                    "; 工人实名认证状态:"+workerInfo.isAuthenticated()+";");
        }

        try{
            int result = customerService.newCustomer(customer);
            model.addAttribute("msg","预约成功！");
            aliyunMNService.notificationUser(tel);
            aliyunMNService.notificationWorker("15234500591");
            sessionStatus.setComplete();
            return "appointment/appointmentsuccess";
        }catch (Exception e){
            model.addAttribute("msg","预约失败！");
            return "appointment/appointmentsuccess";
        }

    }

    @RequestMapping(value = "/appoint/workerid={workerid}/free")
    public String appointWorker(@PathVariable("workerid") String workerid,Model model){
        model.addAttribute("workerid",workerid);
        return "redirect:/appointment";
    }



}
