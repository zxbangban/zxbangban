package com.zxbangban.dao;

import com.zxbangban.entity.UserInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * Created by pingyr on 2017/7/13.
 */
@Repository
public interface UserInfoDao {
    int newWorkerInfo(@Param("userInfo") UserInfo userInfo);
    UserInfo queryByUsername(String username);
    String queryTelByUsername(String username);
    int updatePassword(@Param("username") String username, @Param("password")String password);
    UserInfo queryByRoleId(Integer roleId);
}
