package com.zxbangban.service;

import com.zxbangban.entity.UserInfo;
import org.springframework.stereotype.Service;

/**
 * Created by pingyr on 2017/7/13.
 */
@Service
public interface UserInfoService {
    int newWorkerInfo(UserInfo userInfo);
    UserInfo queryByUsername(String username);
    String queryTelByUsername(String username);
    int updatePassword(String username, String password);
}
