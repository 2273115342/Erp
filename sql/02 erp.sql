/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2018/10/5 23:16:38                           */
/*==============================================================*/


alter table t_employees
   drop constraint FK_T_EMPLOY_REFERENCE_T_DEPART;

alter table t_employees
   drop constraint FK_T_EMPLOY_REFERENCE_T_ROLE;

alter table t_goods
   drop constraint FK_T_GOODS_REFERENCE_T_SUPPLI;

alter table t_log
   drop constraint FK_T_LOG_REFERENCE_T_SUPPLI;

alter table t_log
   drop constraint FK_T_LOG_REFERENCE_T_GOODS;

alter table t_log
   drop constraint FK_T_LOG_REFERENCE_T_WG;

alter table t_log
   drop constraint FK_T_LOG_REFERENCE_T_EMPLOY;

alter table t_menu_accesslink
   drop constraint FK_T_MENU_A_REFERENCE_T_ACCESS;

alter table t_menu_accesslink
   drop constraint FK_T_MENU_A_REFERENCE_T_MENU;

alter table t_rm
   drop constraint FK_T_RM_REFERENCE_T_MENU;

alter table t_rm
   drop constraint FK_T_RM_REFERENCE_T_ROLE;

alter table t_wg
   drop constraint FK_T_WG_REFERENCE_T_WAREHO;

alter table t_wg
   drop constraint FK_T_WG_REFERENCE_T_GOODS;

drop table t_accesslink cascade constraints;

drop table t_department cascade constraints;

drop table t_employees cascade constraints;

drop table t_goods cascade constraints;

drop table t_log cascade constraints;

drop table t_menu cascade constraints;

drop table t_menu_accesslink cascade constraints;

drop table t_rm cascade constraints;

drop table t_role cascade constraints;

drop table t_supplier cascade constraints;

drop table t_warehouse cascade constraints;

drop table t_wg cascade constraints;

/*==============================================================*/
/* Table: t_accesslink                                          */
/*==============================================================*/
create table t_accesslink 
(
   link_id              number(10)           not null,
   link_name            varchar2(40),
   link_address         varchar2(40),
   constraint PK_T_ACCESSLINK primary key (link_id)
);

comment on table t_accesslink is
'系统所有的访问链接表';

/*==============================================================*/
/* Table: t_department                                          */
/*==============================================================*/
create table t_department 
(
   dept_id              number(10)           not null,
   dept_name            varchar2(30),
   constraint PK_T_DEPARTMENT primary key (dept_id)
);

comment on table t_department is
'部门表';

/*==============================================================*/
/* Table: t_employees                                           */
/*==============================================================*/
create table t_employees 
(
   e_id                 number(10)           not null,
   role_id              number(10),
   dept_id              number(10),
   e_name               varchar2(30),
   e_iphone             number(11),
   e_note               varchar2(100),
   e_account            varchar2(10),
   e_password           varchar2(15),
   constraint PK_T_EMPLOYEES primary key (e_id)
);

comment on table t_employees is
'用户信息表';

/*==============================================================*/
/* Table: t_goods                                               */
/*==============================================================*/
create table t_goods 
(
   goods_id             number(10)           not null,
   supplier_id          number(10),
   goods_name           varchar2(50),
   goods_top            number(10),
   goods_floor          number(10),
   goods_price          number(10),
   goods_cost           number(10),
   goods_note           varchar2(100),
   constraint PK_T_GOODS primary key (goods_id)
);

comment on table t_goods is
'商品表';

/*==============================================================*/
/* Table: t_log                                                 */
/*==============================================================*/
create table t_log 
(
   log_id               number(10)           not null,
   wg_id                number(15),
   e_id                 number(10),
   supplier_id          number(10),
   goods_id             number(10),
   log_type             varchar(10),
   log_details          varchar2(100),
   log_time             DATE,
   constraint PK_T_LOG primary key (log_id)
);

comment on table t_log is
'该表用来记录仓库商品的改变';

/*==============================================================*/
/* Table: t_menu                                                */
/*==============================================================*/
create table t_menu 
(
   menu_id              number(10)           not null,
   menu_name            varchar2(30)         not null,
   menu_link            varchar2(50),
   parent_id            number(10),
   menu_img             varchar2(50),
   disp_order           number(10),
   is_have              number(1),
   constraint PK_T_MENU primary key (menu_id)
);

comment on table t_menu is
'系统菜单表';

/*==============================================================*/
/* Table: t_menu_accesslink                                     */
/*==============================================================*/
create table t_menu_accesslink 
(
   mlink_id             number(10)           not null,
   link_id              number(10),
   menu_id              number(10),
   constraint PK_T_MENU_ACCESSLINK primary key (mlink_id)
);

/*==============================================================*/
/* Table: t_rm                                                  */
/*==============================================================*/
create table t_rm 
(
   rm_id                number(10)           not null,
   role_id              number(10),
   menu_id              number(10),
   constraint PK_T_RM primary key (rm_id)
);

comment on table t_rm is
'角色对应的菜单表';

/*==============================================================*/
/* Table: t_role                                                */
/*==============================================================*/
create table t_role 
(
   role_id              number(10)           not null,
   role_name            varchar2(20),
   constraint PK_T_ROLE primary key (role_id)
);

comment on table t_role is
'系统角色表';

/*==============================================================*/
/* Table: t_supplier                                            */
/*==============================================================*/
create table t_supplier 
(
   supplier_id          number(10)           not null,
   supplier_name        varchar2(50),
   supplier_people      varchar2(15),
   supplier_iphone      number(11),
   supplier_business    varchar2(50),
   supplier_address     varchar2(100),
   supplier_delivery    varchar2(10),
   supplier_note        varchar2(100),
   constraint PK_T_SUPPLIER primary key (supplier_id)
);

comment on table t_supplier is
'供应商信息表';

/*==============================================================*/
/* Table: t_warehouse                                           */
/*==============================================================*/
create table t_warehouse 
(
   warehouse_id         number(10)           not null,
   warehouse_name       varchar2(50),
   constraint PK_T_WAREHOUSE primary key (warehouse_id)
);

comment on table t_warehouse is
'仓库信息表';

/*==============================================================*/
/* Table: t_wg                                                  */
/*==============================================================*/
create table t_wg 
(
   wg_id                number(15)           not null,
   goods_id             number(10),
   warehouse_id         number(10),
   stock                number(15)           not null,
   constraint PK_T_WG primary key (wg_id)
);

comment on table t_wg is
'仓库的商品库存表';

alter table t_employees
   add constraint FK_T_EMPLOY_REFERENCE_T_DEPART foreign key (dept_id)
      references t_department (dept_id);

alter table t_employees
   add constraint FK_T_EMPLOY_REFERENCE_T_ROLE foreign key (role_id)
      references t_role (role_id);

alter table t_goods
   add constraint FK_T_GOODS_REFERENCE_T_SUPPLI foreign key (supplier_id)
      references t_supplier (supplier_id);

alter table t_log
   add constraint FK_T_LOG_REFERENCE_T_SUPPLI foreign key (supplier_id)
      references t_supplier (supplier_id);

alter table t_log
   add constraint FK_T_LOG_REFERENCE_T_GOODS foreign key (goods_id)
      references t_goods (goods_id);

alter table t_log
   add constraint FK_T_LOG_REFERENCE_T_WG foreign key (wg_id)
      references t_wg (wg_id);

alter table t_log
   add constraint FK_T_LOG_REFERENCE_T_EMPLOY foreign key (e_id)
      references t_employees (e_id);

alter table t_menu_accesslink
   add constraint FK_T_MENU_A_REFERENCE_T_ACCESS foreign key (link_id)
      references t_accesslink (link_id);

alter table t_menu_accesslink
   add constraint FK_T_MENU_A_REFERENCE_T_MENU foreign key (menu_id)
      references t_menu (menu_id);

alter table t_rm
   add constraint FK_T_RM_REFERENCE_T_MENU foreign key (menu_id)
      references t_menu (menu_id);

alter table t_rm
   add constraint FK_T_RM_REFERENCE_T_ROLE foreign key (role_id)
      references t_role (role_id);

alter table t_wg
   add constraint FK_T_WG_REFERENCE_T_WAREHO foreign key (warehouse_id)
      references t_warehouse (warehouse_id);

alter table t_wg
   add constraint FK_T_WG_REFERENCE_T_GOODS foreign key (goods_id)
      references t_goods (goods_id);


/*删除序列*/
drop sequence seq_menu;
drop sequence seq_rm;
drop sequence seq_role;
drop sequence seq_employees;
drop sequence seq_department;
drop sequence seq_log;
drop sequence seq_supplier;
drop sequence seq_goods;
drop sequence seq_wg;
drop sequence seq_warehouse;
drop sequence seq_accesslink;
drop sequence seq_menu_accesslink;


/*创建序列*/
create sequence seq_menu
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_rm
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_role
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_employees
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_department
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_log
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_supplier
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_goods
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_wg
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_warehouse
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_accesslink
minvalue 1
maxvalue 99999999
start with 1
increment by 1;

create sequence seq_menu_accesslink
minvalue 1
maxvalue 99999999
start with 1
increment by 1;