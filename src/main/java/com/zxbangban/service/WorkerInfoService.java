package com.zxbangban.service;

import com.zxbangban.entity.Worker;
import com.zxbangban.entity.WorkerInfo;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by pingyr on 2017/7/11.
 */
@Service
public interface WorkerInfoService {

    int newWorkerInfo(WorkerInfo workerInfo);

    List<WorkerInfo> showWorkersByJobId(Integer jobId);

    List<WorkerInfo> queryByTelphone(String telphone);

    WorkerInfo queryWorkerByWorkerId(long workerid);

    List<WorkerInfo> queryNew();

    List<Worker> queryAll();

    List<Worker> queryByJobId(Integer jobId);

    List<Worker> queryByJobName(String jobName);

    int countWorkers();

    int countWorkersByJoBId(Integer jobId);

    int countWorkersByJobName(String jobName);

    String queryTelByWorkerId(long workerid);

    WorkerInfo queryDetailByWorkerId(long workerid);

    int updateIsShow(long workerid);

    int updateIsNotShow(long workerid);

    int editName(long workerid,String name);

    int editCert(long workerid,boolean cert);

    int editPR(long workerid, boolean pr);

    int editLocation(long workerid,String location);

    void editheadimg(long workerid, String headimgurl);

    boolean queryPRByWorkerId(long workerid);

    int updateOARating(long workerid);

    int saveDes(long id,String projectDes);

    int editPorjectImg(long id,String projectImg);

    String queryProjectImgByWorkerId(long workerid);

    int changeStateTrue(long workerId);

    int changeStateFalse(long workerId);

    int deleteWorkerInfo(long workerId);

    double queryOARatingByWorkerId(long workerId);

    WorkerInfo queryByTel(String tel);

    int updateWorkerState(boolean state,long workerId);
}
