<<<<<<< HEAD
SHOW DATABASES ;
CREATE DATABASE zxbangbandb;

CREATE TABLE  WorkerInfo(
  workerId BIGINT NOT NULL AUTO_INCREMENT COMMENT '工人di',
  name VARCHAR(120) NOT NULL COMMENT '工人姓名',
  head_img_url VARCHAR(120) DEFAULT 'https://zxbangban.oss-cn-beijing.aliyuncs.com/86232017619153427916.jpg' COMMENT '头像图片',
  tel CHAR(11) NOT NULL COMMENT '注册手机号',
  job_id BIGINT NOT NULL DEFAULT 0 COMMENT '工种',
  address VARCHAR(120) COMMENT '籍贯地址',
  location VARCHAR(120)  COMMENT '现在所在地',
  project_img_url VARCHAR(120) COMMENT '工程图片',
  state BOOLEAN DEFAULT FALSE COMMENT '工人施工状态标识：false 待工；true 工作中；',
  authenticated BOOLEAN DEFAULT FALSE COMMENT '实名认证标识：false 未认证； true 认证',
  certificated BOOLEAN DEFAULT FALSE COMMENT '工人资质认证标识： false 未认证； true 已认证',
  pr TINYINT DEFAULT 0 COMMENT '工人等级:默认标识 0 普通；1 银牌工人；2 金牌工人',
  create_time TIMESTAMP NOT NULL COMMENT '创建时间',
  referer_tel CHAR(11) COMMENT '推荐人手机号',
  is_show BOOLEAN DEFAULT TRUE COMMENT '工人信息是否显示',
  primary key(workerId),
  KEY idx_workerinfo_id(workerId),
  KEY idx_workerinfo_tel(tel),
  KEY idx_workerinfo_job_id(job_id),
  KEY idx_workerinfo_location(location),
  KEY idx_workerinfo_referer_tel(referer_tel),
  KEY idx_workerinfo_level(pr),
  KEY idx_workerinfo_create_time(create_time),
  KEY idx_workerinfo_is_show(is_show)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='工人信息表';

create table userinfo (
  user_id bigint NOT NULL auto_increment comment '注册用户id',
  username VARBINARY(42) NOT NULL UNIQUE comment '注册用户用户名',
  password  CHAR(32) NOT NULL comment '注册用户用户密码',
  open_id  VARCHAR(120) COMMENT '微信openid',
  role_id BIGINT NOT NULL  DEFAULT 1 COMMENT '平台权限角色:默认 1 (注册用户)',
  authen bigint NOT NULL DEFAULT 1 COMMENT '',
  certificated BOOLEAN DEFAULT FALSE COMMENT '用户实名认证标识： false 未认证； true 已认证',
  head_img_url VARCHAR(120) DEFAULT 'https://zxbangban.oss-cn-beijing.aliyuncs.com/86232017619153427916.jpg'  COMMENT '头像图片',
  member_level TINYINT   DEFAULT 1 COMMENT '用户会员等级:默认标识 1 ',
  create_time timestamp NOT NULL comment '注册时间',
  telphone VARCHAR(11)  not null COMMENT '注册手机号',
  primary key (user_id),
  KEY idx_userinfo_id(user_id),
  KEY idx_userinfo_username(username),
  KEY idx_userinfo_role_id(role_id),
  KEY idx_userinfo_certificated(certificated),
  KEY idx_userinfo_member_level(member_level),
  KEY idx_userinfo_create_time(create_time),
  KEY idx_userinfo_telphone(telphone)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='注册用户信息表';

CREATE TABLE customer(
  id BIGINT NOT NULL AUTO_INCREMENT COMMENT '顾客id',
  name VARCHAR(120) NOT NULL COMMENT '顾客姓名',
  telphone VARCHAR(11) NOT NULL COMMENT '顾客电话',
  program_address VARCHAR(120) COMMENT '工程所在地',
  priority INT NOT NULL DEFAULT 1 COMMENT '优先级别',
  create_time TIMESTAMP NOT NULL COMMENT '创建时间',
  notes VARCHAR(120) COMMENT '备注',
  PRIMARY KEY (id),
  key idx_customer_id(id),
  key idx_customer_create_time(create_time),
  key idx_customer_programaddress(program_address),
=======
/*创建用户信息数据库*/
CREATE DATABASE 3vjiawebinfo;

use 3vjiawebinfo;

/*注册用户信息表*/
create table userinfo(
  `id` bigint NOT NULL auto_increment comment '注册用户id',
  `username` varchar(120) NOT NULL UNIQUE comment '注册用户名称',
  `password` varchar(120) NOT NULL comment '注册用户密码',
  `create_time` timestamp NOT NULL comment '注册时间',
  `telphone` VARCHAR(11) NOT NULL UNIQUE COMMENT '注册手机号',
  `permission` TINYINT NOT NULL  DEFAULT -1 COMMENT '权限等级:默认一般用户 -1;0 雇员等级;1 客服等级;2 超级权限',
  primary key (id),
  key idx_userinfo_id(id),
  key idx_userinfo_create_time(create_time)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='用户信息表';


/*工人信息表*/
create table employee_profile(
  `id` bigint comment '注册用户id',
  `name` varchar(120) not null comment '姓名',
  `age` int not null comment '年龄',
  `job_id` bigint not null comment '工作类型id' ,
  `state` tinyint not null default -1 comment '状态标识：-1 待工；0 工作中；1 完工;2 已预约',
  `job_age` INT NOT NULL COMMENT '工龄',
  `job_salary` DOUBLE NOT NULL  COMMENT '工薪',
  `certificated` TINYINT NOT NULL  DEFAULT -1 COMMENT '认证标识:-1 未认证；0 认证中；1 认证',
  `deposit` INT NOT NULL COMMENT '押金',
  `native_place` VARCHAR(120) NOT NULL COMMENT '籍贯',
  `location` VARCHAR(120) NOT NULL COMMENT '现在所在地',
  `id_card` CHAR(18) UNIQUE COMMENT '身份证号码',
  `membership_level` TINYINT NOT NULL DEFAULT 0 COMMENT '会员等级:默认标识 0 普通；1 会员；2 超级会员',
  `create_time` TIMESTAMP NOT NULL COMMENT '申请时间',
  PRIMARY KEY (id),
  key idx_employee_profile_id (id),
  key idx_employee_profile_job_id(job_id),
  key idx_employee_profile_create_time(create_time),
  key idx_employee_profile_location(location),
  key idx_employee_profile_deposit(deposit),
  key idx_employee_profile_state(state),
  key idx_employee_profile_job_age(job_age),
  FOREIGN KEY(id) REFERENCES userinfo(id)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='个人信息表';

/*客服员工表*/
CREATE TABLE service_profile(
  `id` bigint  comment '注册用户id',
  `name` varchar(120) not null comment '姓名',
  `gender` TINYINT NOT NULL DEFAULT -1 COMMENT '性别：默认 -1 男；1 女；0 待定',
  `age` int not null comment '年龄',
  `create_time` TIMESTAMP NOT NULL COMMENT '任职开始时间',
  `end_time` TIMESTAMP NOT NULL COMMENT '任职结束时间',
  PRIMARY KEY (id),
  key idx_service_profile_id(id),
  key idx_service_profile_age(age),
  key idx_service_profile_gender(gender),
  key idx_service_profile_create_time(create_time),
  key idx_service_profile_end_time(end_time),
  FOREIGN KEY(id) REFERENCES userinfo(id)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='客服信息表';

/*工种类型表*/
CREATE TABLE jobs(
  `job_id` BIGINT NOT NULL COMMENT '工种id',
  `job_name` varchar(120) NOT NULL COMMENT '工种名称',
  PRIMARY KEY (job_id)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='工种信息表';


/*顾客信息表*/

CREATE TABLE customer(
  `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '顾客id',
  `name` VARCHAR(120) NOT NULL COMMENT '顾客姓名',
  `telphone` VARCHAR(11) NOT NULL UNIQUE COMMENT '顾客电话',
  `create_time` TIMESTAMP NOT NULL COMMENT '创建时间',
  PRIMARY KEY (id),
  key idx_customer_id(id),
  key idx_customer_create_time(create_time),
>>>>>>> 06de62988082376029fa3db2b096013a6c3894b8
  key idx_customer_telphone(telphone)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='顾客信息表';


<<<<<<< HEAD
/*工人补充信息表*/
create  table worker_profile(
  id bigint not null auto_increment comment '工人信息id',
  workerid bigint comment '工人id',
  age int comment '工人年龄',
  deposit DOUBLE default 0.00 COMMENT '担保金',
  star_Evaluated tinyint unsigned default 0 COMMENT '星级评价',
  weighted DOUBLE default 0.00 COMMENT '权重排名',
  home_PV int default 0 comment'个人主页浏览量',
  primary key(id,workerid),
  key idx_worker_profile_id(id),
  key idx_worker_profile_workerid(workerid),
  key idx_worker_profile_age(age),
  key idx_worker_profile_deposit(deposit),
  key idx_worker_profile_star_Evaluated(star_Evaluated),
  key idx_worker_profile_weighted(weighted),
  key idx_worker_profile_home_PV(home_PV)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='工人补充信息表';


Create table user_profile(
  id bigint not null auto_increment comment '用户信息id',
  user_id bigint(20) NOT NULL comment '用户id',
  name varchar(120) not null  comment '用户姓名',
  gender char (2) not null default '男' comment '用户性别',
  age int comment '用户年龄',
  menmberShip  tinyint unsigned default 0 comment '注册会员等级',
  code varchar(120)  comment '卡券',
  birthday varchar (20) comment '生日',
  id_card CHAR(18) comment '身份证号',
  wallet DECIMAL default '0.00' comment '钱包',
  project_addresses varchar(400)  comment '工程订单地址',
  create_time datetime  not null comment '订单创建时间',
  primary key(id,user_id)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='客户信息表';
=======
/*顾客个人信息表*/
CREATE table customer_profile(
  `id` BIGINT COMMENT '顾客个人信息表Id',
  `address` VARCHAR(120) NOT NULL COMMENT '顾客地址',
  `housetype` VARCHAR(120) COMMENT '房屋类型信息',
  `notes` VARCHAR(120) COMMENT '备注',
  `create_time` TIMESTAMP NOT NULL COMMENT '创建时间',
  PRIMARY KEY (id),
  key idx_customer_profile_id(id),
  key idx_customer_profile_address(address),
  key idx_customer_profile_create_time(create_time),
  FOREIGN KEY (id) REFERENCES customer(id)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='顾客个人信息表';

/*装修订单信息表*/
CREATE TABLE decorate_order(
  `id` BIGINT AUTO_INCREMENT NOT NULL  COMMENT '装修订单id',
  `customer_id` BIGINT NOT NULL COMMENT '顾客id',
  `employee_id` BIGINT COMMENT '员工信息id',
  `state` TINYINT NOT NULL DEFAULT -1 COMMENT '订单状态: -1 未处理；0 处理中；1 验收；2 已处理',
  `create_time` TIMESTAMP NOT NULL COMMENT '订单创建时间',
  `warranty` INT NOT NULL DEFAULT 1 COMMENT '保修期: 默认1年',
  `service_id` BIGINT NOT NULL DEFAULT  10000 COMMENT '客服id:默认10000',
  `notes` VARCHAR(120) COMMENT '备注信息',
  `number` varchar(16) COMMENT '订单编号',
  PRIMARY KEY (id,customer_id),
  key idx_decorate_order_id(id),
  key idx_decorate_order_employee_id(employee_id),
  key idx_decorate_order_customer_id(customer_id),
  key idx_decorate_order_create_time(create_time),
  key idx_decorate_order_state(state),
  key idx_decorate_order_service_id(service_id),
  key idx_decorate_order_number(number),
  FOREIGN KEY (customer_id) REFERENCES customer(id),
  FOREIGN KEY (employee_id) REFERENCES userinfo(id),
  FOREIGN KEY (service_id) REFERENCES userinfo(id)
)ENGINE=InnoDB Default CHARSET=utf8 COMMENT='装修订单表';


INSERT INTO employee_profile
  (id,name,age,job_id,job_age,job_salary,deposit,native_place,location,id_card)
VALUES
  (1,'张一',23,1,2,200,200.00,'长治市','长治','140427199900001111'),
  (2,'李二',24,1,3,300,100.00,'长治市','长治','140427199900001112'),
  (3,'张三',25,2,4,400,200.00,'长治市','长治','140427199900001113'),
  (4,'李四',26,2,5,500,50,'长治市','长治','140427199900001114'),
  (5,'王五',25,1,2,100,150,'长治市','长治','140427199900001115'),
  (6,'赵六',32,2,2,200,2000,'长治市','长治','140427199900001116'),
  (7,'郭七',41,3,12,200,1000,'长治市','长治','140427199900001117'),
  (8,'赵八',25,1,3,300,200,'长治市','长治','140427199900001118'),
  (9,'钱九',42,4,2,400,2100,'晋城市','晋城','140427199900001119'),
  (10,'孙十',40,4,4,500,2200,'晋城市','晋城','140427199900001121'),
  (11,'李十一',30,3,2,100,2300,'晋城市','晋城','140427199900001122');




insert into userinfo
(username,password,telphone)
values
  ('test1','123456',15911110000),
  ('test2','123456',13900001111),
  ('test3','123456789',12100002222),
  ('test4','12345678',13011110000);

insert into jobs

	(job_name)

values

	('水电工'),

	('铺地工'),

 	('木工'),

  ('油工'),

	('工头');


select c.id,c.name,o.number from customer as c inner JOIN decorate_order as o ON c.id = o.customer_id;




>>>>>>> 06de62988082376029fa3db2b096013a6c3894b8
