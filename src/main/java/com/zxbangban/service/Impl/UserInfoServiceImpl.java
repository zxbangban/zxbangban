package com.zxbangban.service.Impl;

import com.zxbangban.dao.UserInfoDao;
import com.zxbangban.entity.UserInfo;
import com.zxbangban.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by pingyr on 2017/7/13.
 */
@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    private UserInfoDao userInfoDao;
    public int newWorkerInfo(UserInfo userInfo) {
        return userInfoDao.newWorkerInfo(userInfo);
    }

    public UserInfo queryByUsername(String username) {
        return userInfoDao.queryByUsername(username);
    }

    public String queryTelByUsername(String username) {
        return userInfoDao.queryTelByUsername(username);
    }

    public int updatePassword(String username, String password) {
        return userInfoDao.updatePassword(username,password);
    }
}
