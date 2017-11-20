package com.zxbangban.service.Impl;

import com.zxbangban.dto.Worker;
import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.enums.TypesOfWorkers;
import com.zxbangban.service.WorkerInfoService;
import com.zxbangban.service.WorkerProfileService;
import com.zxbangban.service.WorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class WorkerServiceImpl implements WorkerService {
    @Autowired
    private WorkerInfoService workerInfoService;
    @Autowired
    private WorkerProfileService workerProfileService;

    public double queryRating(long workerId) {
        Worker worker = query(workerId);
        double w = workerProfileService.queryWeightedByWorkerId(workerId);
        return countRate(worker,w);
    }

    public List<Worker> queryWorkersByJob(String str) {
        List<Worker> workers = new ArrayList<Worker>();
        List<WorkerInfo> workerIfs;
        if(str.equals("ALL")){
            workerIfs = workerInfoService.queryAll();
        }else {
            workerIfs = workerInfoService.queryByJobId(TypesOfWorkers.valueOf(str).getJobId());
        }
        for (WorkerInfo workerInfo1 : workerIfs) {
            Worker worker = new Worker();
            worker.setId(workerInfo1.getWorkerId());
            worker.setName(workerInfo1.getName());
            worker.setHeadImgUrl(workerInfo1.getHeadImgUrl());
            worker.setTelPhone(workerInfo1.getTel());
            worker.setJob(TypesOfWorkers.typeOf(workerInfo1.getJobId()).getType());
            worker.setState(workerInfo1.isState());
            worker.setAuthenticated(workerInfo1.isAuthenticated());
            worker.setPr(workerInfo1.getPr());
            worker.setCertificated(workerInfo1.isCertificated());
            worker.setShow(workerInfo1.isShow());
            worker.setCreateTime(workerInfo1.getCreateTime());
            workers.add(worker);
        }
        return workers;
    }

    private Worker query(long workerId){
        Worker worker = new Worker();
        WorkerInfo workerInfo = workerInfoService.queryDetailByWorkerId(workerId);
        worker.setPr(workerInfo.getPr());
        worker.setCertificated(workerInfo.isCertificated());
        worker.setAuthenticated(workerInfo.isAuthenticated());
        return worker;
    }

    private double countRate(Worker worker,Double weight){
        double a = 0,b = 0,c = 0;
        if(worker.isAuthenticated()){
            a = 10;
        }
        if(worker.isCertificated()){
            b = 100;
        }
        if(worker.isPr()){
            c = 10;
        }
        return 600 + a + b + c + weight;
    }
}
