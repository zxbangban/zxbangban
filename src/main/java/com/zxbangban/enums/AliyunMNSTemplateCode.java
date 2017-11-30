package com.zxbangban.enums;

public enum AliyunMNSTemplateCode {
    SMS_VERIFICATION(1,"SMS_77605024"),
    SMS_WORKER_UN_CERTIFICATED_NOTIFICATION(2,"SMS_78950013"),
    SMS_CUSTOMER_NOTIFICATION(3,"SMS_114225020"),
    SMS_SERVICE_NOTIFICATION(4,"SMS_114435002"),
    SMS_WORKER_CERTIFICATED_NOTIFICATION(5,"");
    private int number;
    private String code;

    public int getNumber() {
        return number;
    }

    public String getCode() {
        return code;
    }

    AliyunMNSTemplateCode(int number, String code) {
        this.number = number;
        this.code = code;
    }

    public static AliyunMNSTemplateCode codeOf(int number){
        for(AliyunMNSTemplateCode templateCode : values()){
            if(templateCode.getNumber() == number){
                return templateCode;
            }
        }
        return null;
    }
}
