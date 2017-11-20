package com.zxbangban.enums;

/**
 * Created by pingyr on 2017/6/1.
 */
public enum TypesOfWorkers {
    INTERIOR_DESIGNER(1,"室内设计师"),
    PROGRAM_MANAGER(2,"项目经理（工长）"),
    PLUMBER(3,"水电工"),
    WATERPROOF(4,"防水工"),
    TILING(5,"瓷砖工"),
    CARPENTER(6,"木工"),
    PAINTER(7,"油漆工"),
    CEILING(8,"吊顶工"),
    FURNITURE_FITTERS(9,"家俱安装工"),
    STONE(10,"石材安装工"),
    WALLPAPER(11,"壁纸工"),
    INTERIOR_DOOR(12,"室内门安装工"),
    BATHROOM(15,"卫浴安装工"),
    LIGHTING(16,"灯饰安装工"),
    CURTAIN(17,"窗帘安装工"),
    UNSKILLED_LABOURER(18,"小工"),
    TRANSPORT(19,"搬运工"),
    HOUSEHOLD_MANAGEMENT(20,"家政服务"),
    DELIVERY(21,"送货工"),
    WOOD_FLOORING(22,"木地板工"),
    BUILDER_WORKER(23,"土建工"),
    INTEGRATED_WALL_CEILING(24,"集成墙吊顶"),
    BEAUTIFUL_SEWER(25,"美缝工"),
    PAULI_TUBE(26,"包立管");


    private Integer jobId;

    private String type;

    public Integer getJobId() {
        return jobId;
    }

    public String getType() {
        return type;
    }

    TypesOfWorkers(Integer jobId, String type) {
        this.jobId = jobId;
        this.type = type;
    }

    public static TypesOfWorkers typeOf(Integer jobId){
        for(TypesOfWorkers type : values()){
            if(type.getJobId().equals(jobId)){
                return type;
            }
        }
        return null;
    }

}
