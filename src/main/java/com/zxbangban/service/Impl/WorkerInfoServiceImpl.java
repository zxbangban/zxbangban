package com.zxbangban.service.Impl;

import com.zxbangban.dao.WorkerInfoDao;
import com.zxbangban.dao.WorkerProfileDAO;
import com.zxbangban.entity.WorkerInfo;
import com.zxbangban.service.WorkerInfoService;
import com.zxbangban.service.WorkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by pingyr on 2017/7/11.
 */
@Service
public class WorkerInfoServiceImpl implements WorkerInfoService{

    @Autowired
    private WorkerInfoDao workerInfoDao;

    @Autowired
    private WorkerProfileDAO workerProfileDAO;

    @Autowired
    private WorkerService workerService;

    public int newWorkerInfo(WorkerInfo workerInfo) {
        return workerInfoDao.newWorkerInfo(workerInfo);
    }

    public List<WorkerInfo> showWorkersByJobId(Integer jobId) {
        return workerInfoDao.showWorkersByJobId(jobId);
    }

    public WorkerInfo queryWorkerByWorkerId(long workerid) {
        return workerInfoDao.queryWorkerByWorkerId(workerid);
    }

    public List<WorkerInfo> queryNew() {
        return workerInfoDao.queryNew();
    }

    public List<WorkerInfo> queryAll() {
        return workerInfoDao.queryAll();
    }

    public List<WorkerInfo> queryByJobId(Integer jobId) {
        return workerInfoDao.queryByJobId(jobId);
    }


    public int countWorkers() {
        return workerInfoDao.countWorkers();
    }

    public int countWorkersByJoBId(Integer jobId) {
        return workerInfoDao.countWorkersByJoBId(jobId);
    }

    public String queryTelByWorkerId(long workerId) {
        return workerInfoDao.queryTelByWorkerId(workerId);
    }

    public WorkerInfo queryByTel(String tel) {
        return workerInfoDao.queryByTel(tel);
    }

    public WorkerInfo queryDetailByWorkerId(long workerId) {
        return workerInfoDao.queryDetailByWorkerId(workerId);
    }

    public int updateIsShow(long workerId) {
        return workerInfoDao.updateIsShow(workerId);
    }

    public int updateIsNotShow(long workerId) {
        return workerInfoDao.updateIsNotShow(workerId);
    }

    public int editName(long workerId, String name) {
        return workerInfoDao.editName(workerId,name);
    }

    public int editLocation(long workerId, String location) {
        return workerInfoDao.editLocation(workerId,location);
    }

    public int editPR(long workerId, boolean pr) {
        return workerInfoDao.editPR(workerId,pr);
    }

    public int editCert(long workerId, boolean cert) {
        return workerInfoDao.editCert(workerId,cert);
    }

    public void editheadimg(long workerId, String headimgurl) {
        workerInfoDao.editheadimg(workerId, headimgurl);
    }

    public boolean queryPRByWorkerId(long workerId) {
        return workerInfoDao.queryPRByWorkerId(workerId);
    }

    public int updateOARating(long workerId) {
        return workerInfoDao.updateOARating(workerId,workerService.queryRating(workerId));
    }

    public int editPorjectImg(long id, String projectImg) {
        return workerInfoDao.editProjectImg(id,projectImg);
    }

    public String queryProjectImgByWorkerId(long workerId) {
        return workerInfoDao.queryProjectImgByWorkerId(workerId);
    }

    public List<WorkerInfo> queryByTelphone(String telphone) {
        return workerInfoDao.queryDetailByTelPhone(telphone);
    }

    public int changeStateTrue(long workerId) {
        return workerInfoDao.changeStateTrue(workerId);
    }

    public int changeStateFalse(long workerId) {
        return workerInfoDao.changeStateFalse(workerId);
    }

    public int deleteWorkerInfo(long workerId) {
        return workerInfoDao.deleteWorkerInfo(workerId);
    }

    public double queryOARatingByWorkerId(long workerId) {
        return workerInfoDao.queryOARatingByWorkerId(workerId);
    }
}
