package com.zxbangban.service;

import org.springframework.stereotype.Service;

/**
 * Created by pingyr on 2017/7/4.
 */
@Service
public interface AliyunMNService {

    String mnsValid(String phoneNumber);

    int notification(String phoneNumber);

    int notificationWorker(String phoneNumber);

    int notificationUser(String phoneNumber);
}
