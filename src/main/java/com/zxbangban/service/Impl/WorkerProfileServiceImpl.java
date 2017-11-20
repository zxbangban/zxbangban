package com.zxbangban.service.Impl;

import com.zxbangban.dao.WorkerProfileDAO;
import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.entity.WorkerProfile;
import com.zxbangban.service.WorkerProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public class WorkerProfileServiceImpl implements WorkerProfileService{

    @Autowired
    private WorkerProfileDAO workerProfileDAO;
    public int newWorkerProfile(WorkerProfile workerProfile) {
        return workerProfileDAO.newWorkerProfile(workerProfile);
    }

    public WorkerProfile queryByWorkerId(long workerid) {
        return workerProfileDAO.queryByWorkerId(workerid);
    }

    public int updateWorkerProfile(WorkerProfile workerProfile) {
        return workerProfileDAO.updateWorkerProfile(workerProfile);
    }

    public int updateView(long wid, int count) {
        return workerProfileDAO.updateView(wid,count);
    }

    public Integer queryViewByWorkerId(long workerid) {
        return workerProfileDAO.queryViewByWorkerId(workerid);
    }

    public int updateNewView(WorkerProfile workerProfile) {
        return workerProfileDAO.updateNewView(workerProfile);
    }

    public WorkerProfile queryDetailByWorkerId(long workerid) {
        return workerProfileDAO.queryDetailByWorkerId(workerid);
    }

    public int editDeposit(long workerid, BigDecimal deposit) {
        return workerProfileDAO.editDeposit(workerid,deposit);
    }

    public short queryStarEvaluatedByWorkerId(long workerid) {
        return workerProfileDAO.queryStarEvaluatedByWorkerId(workerid);
    }

    public double queryWeightedByWorkerId(long workerid) {
        return workerProfileDAO.queryWeightedByWorkerId(workerid);
    }

    public int updateWeightedByWorkerId(long workerid, double weighted) {
        return workerProfileDAO.updateWeightedByWorkerId(workerid,weighted);
    }

    public int deleteWorkerProfile(long workerId) {
        return workerProfileDAO.deleteWorkerProfile(workerId);
    }
}
