package com.zxbangban.service;

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

    List<WorkerInfo> queryAll();

    List<WorkerInfo> queryByJobId(Integer jobId);

    int countWorkers();

    int countWorkersByJoBId(Integer jobId);

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

    int editPorjectImg(long id,String projectImg);

    String queryProjectImgByWorkerId(long workerid);

    int changeStateTrue(long workerId);

    int changeStateFalse(long workerId);

    int deleteWorkerInfo(long workerId);

    double queryOARatingByWorkerId(long workerId);

    WorkerInfo queryByTel(String tel);

    int updateWorkerState(boolean state,long workerId);
}
