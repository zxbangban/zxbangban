package com.zxbangban.service.Impl;

import com.aliyun.mns.client.CloudAccount;
import com.aliyun.mns.client.CloudTopic;
import com.aliyun.mns.client.MNSClient;
import com.aliyun.mns.common.ServiceException;
import com.aliyun.mns.model.BatchSmsAttributes;
import com.aliyun.mns.model.MessageAttributes;
import com.aliyun.mns.model.RawTopicMessage;
import com.aliyun.mns.model.TopicMessage;
import com.zxbangban.service.AliyunMNService;
import org.springframework.stereotype.Service;

import java.util.Random;

/**
 * Created by pingyr on 2017/7/4.
 */
@Service
public class AliyunMNServiceImpl implements AliyunMNService{
    public String mnsValid(String phoneNumber) {
        CloudAccount cloudAccount = new CloudAccount("LTAIGlJAZQCRcR78",
                "wVM6DBKxKqfwzrrWbIUKsHQtlth2BC",
                "https://1564985939361524.mns.cn-beijing.aliyuncs.com/");
        MNSClient mnsClient = cloudAccount.getMNSClient();
        CloudTopic cloudTopic = mnsClient.getTopicRef("sms.topic-cn-beijing");

        RawTopicMessage rawTopicMessage = new RawTopicMessage();
        rawTopicMessage.setMessageBody("装修帮办短信验证服务");

        MessageAttributes messageAttributes = new MessageAttributes();
        BatchSmsAttributes batchSmsAttributes = new BatchSmsAttributes();
        batchSmsAttributes.setFreeSignName("装修帮办");
        batchSmsAttributes.setTemplateCode("SMS_77605024");

        BatchSmsAttributes.SmsReceiverParams smsReceiverParams = new BatchSmsAttributes.SmsReceiverParams();
        int min = 100000;
        int max = 999999;
        Random random = new Random();
        int mnscode = random.nextInt(max)%(max-min+1) + min;
        smsReceiverParams.setParam("code",String.valueOf(mnscode));
        batchSmsAttributes.addSmsReceiver(phoneNumber,smsReceiverParams);
        messageAttributes.setBatchSmsAttributes(batchSmsAttributes);
        TopicMessage topicMessage = null;
        try {
            topicMessage = cloudTopic.publishMessage(rawTopicMessage,messageAttributes);
        }catch (ServiceException se){
            se.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }

        if(topicMessage!=null){
            mnsClient.close();
            return String.valueOf(mnscode);
        }else {
            return "000000";
        }



    }

    public int notification(String phoneNumber) {
        CloudAccount cloudAccount = new CloudAccount("LTAIGlJAZQCRcR78",
                "wVM6DBKxKqfwzrrWbIUKsHQtlth2BC",
                "https://1564985939361524.mns.cn-beijing.aliyuncs.com/");
        MNSClient mnsClient = cloudAccount.getMNSClient();
        CloudTopic cloudTopic = mnsClient.getTopicRef("sms.topic-cn-beijing");

        RawTopicMessage rawTopicMessage = new RawTopicMessage();
        rawTopicMessage.setMessageBody("装修帮办短信验证服务");

        MessageAttributes messageAttributes = new MessageAttributes();
        BatchSmsAttributes batchSmsAttributes = new BatchSmsAttributes();
        batchSmsAttributes.setFreeSignName("装修帮办");
        batchSmsAttributes.setTemplateCode("SMS_78950013");

        BatchSmsAttributes.SmsReceiverParams smsReceiverParams = new BatchSmsAttributes.SmsReceiverParams();
        batchSmsAttributes.addSmsReceiver(phoneNumber,smsReceiverParams);
        messageAttributes.setBatchSmsAttributes(batchSmsAttributes);
        TopicMessage topicMessage = null;
        try {
            topicMessage = cloudTopic.publishMessage(rawTopicMessage,messageAttributes);
        }catch (ServiceException se){
            se.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }

        if(topicMessage!=null){
            mnsClient.close();
            return 1;
        }else {
            return 0;
        }

    }
    //通知客服有客户预约工人
    public int notificationWorker(String phoneNumber) {
        CloudAccount cloudAccount = new CloudAccount("LTAIGlJAZQCRcR78",
                "wVM6DBKxKqfwzrrWbIUKsHQtlth2BC",
                "https://1564985939361524.mns.cn-beijing.aliyuncs.com/");
        MNSClient mnsClient = cloudAccount.getMNSClient();
        CloudTopic cloudTopic = mnsClient.getTopicRef("sms.topic-cn-beijing");

        RawTopicMessage rawTopicMessage = new RawTopicMessage();
        rawTopicMessage.setMessageBody("装修帮办短信验证服务");

        MessageAttributes messageAttributes = new MessageAttributes();
        BatchSmsAttributes batchSmsAttributes = new BatchSmsAttributes();
        batchSmsAttributes.setFreeSignName("装修帮办");
        batchSmsAttributes.setTemplateCode("SMS_114435002");

        BatchSmsAttributes.SmsReceiverParams smsReceiverParams = new BatchSmsAttributes.SmsReceiverParams();
        batchSmsAttributes.addSmsReceiver(phoneNumber,smsReceiverParams);
        messageAttributes.setBatchSmsAttributes(batchSmsAttributes);
        TopicMessage topicMessage = null;
        try {
            topicMessage = cloudTopic.publishMessage(rawTopicMessage,messageAttributes);
        }catch (ServiceException se){
            se.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }

        if(topicMessage!=null){
            mnsClient.close();
            return 1;
        }else {
            return 0;
        }

    }

    //通知客户预约成功
    public int notificationUser(String phoneNumber) {
        CloudAccount cloudAccount = new CloudAccount("LTAIGlJAZQCRcR78",
                "wVM6DBKxKqfwzrrWbIUKsHQtlth2BC",
                "https://1564985939361524.mns.cn-beijing.aliyuncs.com/");
        MNSClient mnsClient = cloudAccount.getMNSClient();
        CloudTopic cloudTopic = mnsClient.getTopicRef("sms.topic-cn-beijing");

        RawTopicMessage rawTopicMessage = new RawTopicMessage();
        rawTopicMessage.setMessageBody("装修帮办短信验证服务");

        MessageAttributes messageAttributes = new MessageAttributes();
        BatchSmsAttributes batchSmsAttributes = new BatchSmsAttributes();
        batchSmsAttributes.setFreeSignName("装修帮办");
        batchSmsAttributes.setTemplateCode("SMS_114225020");

        BatchSmsAttributes.SmsReceiverParams smsReceiverParams = new BatchSmsAttributes.SmsReceiverParams();
        batchSmsAttributes.addSmsReceiver(phoneNumber,smsReceiverParams);
        messageAttributes.setBatchSmsAttributes(batchSmsAttributes);
        TopicMessage topicMessage = null;
        try {
            topicMessage = cloudTopic.publishMessage(rawTopicMessage,messageAttributes);
        }catch (ServiceException se){
            se.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }

        if(topicMessage!=null){
            mnsClient.close();
            return 1;
        }else {
            return 0;
        }

    }
}
