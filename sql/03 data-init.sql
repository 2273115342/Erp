-- 1.部门信息
insert into t_department(dept_id, dept_name)
values(1, '宣传部');

insert into t_department(dept_id, dept_name)
values(2, '销售部');

insert into t_department(dept_id, dept_name)
values(3, '财务部');
commit;

-- 主键序列号同步
select seq_department.nextval from dual;
select seq_department.nextval from dual;
select seq_department.nextval from dual;

-- 2.角色信息
insert into t_role(role_id, role_name)
values(1, '系统管理员');
insert into t_role(role_id, role_name)
values(2, '部门经理');
insert into t_role(role_id, role_name)
values(3, '仓库管理员');
insert into t_role(role_id, role_name)
values(4, '普通员工');

-- 主键序列号同步
select seq_role.nextval from dual;
select seq_role.nextval from dual;
select seq_role.nextval from dual;
select seq_role.nextval from dual;

-- 3.用户信息
insert into t_employees (e_id, dept_id, role_id, e_name, e_iphone, e_note, e_account, e_password)
values (1, 1, 1,'张三',134567985,'做事认真刻苦','zhangsan','123456');

insert into t_employees (e_id, dept_id, role_id, e_name, e_iphone, e_note, e_account, e_password)
values (2, 2, 2,'李四',4165413498,'勤奋好学，积极乐观','lisi','123456');

insert into t_employees (e_id, dept_id, role_id, e_name, e_iphone, e_note, e_account, e_password)
values (3, 3, 3,'王五',15645632456,'性格乐观向上，善于沟通','wangwu','123456');
commit;

-- 主键序列号同步
select seq_employees.nextval from dual;
select seq_employees.nextval from dual;
select seq_employees.nextval from dual;


-- 4.菜单信息
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (1,'用户管理','menu_query',null,'../aaa.img',1,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (2,'供应商管理','menu_query',null,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (3,'部门管理','menu_query',null,'../aaa.img',3,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (4,'商品管理','menu_query',null,'../aaa.img',4,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (5,'日志管理','menu_query',null,'../aaa.img',5,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (6,'仓库管理','menu_query',null,'../aaa.img',6,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (19,'菜单管理','menu_query',null,'../aaa.img',7,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (20,'角色菜单管理','menu_query',null,'../aaa.img',8,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (21,'角色管理','menu_query',null,'../aaa.img',9,0);

insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (7,'查询用户','menu_query',1,'../aaa.img',6,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (8,'增加用户','menu_query',1,'../aaa.img',6,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (9,'删除用户','menu_query',1,'../aaa.img',6,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (10,'修改用户','menu_query',1,'../aaa.img',6,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (11,'增加供应商','menu_query',2,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (12,'删除供应商','menu_query',2,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (13,'修改供应商','menu_query',2,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (14,'查询供应商','menu_query',2,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (15,'查询商品','menu_query',4,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (16,'修改商品','menu_query',4,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (17,'删除商品','menu_query',4,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (18,'增加商品','menu_query',4,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (22,'增加菜单','menu_query',19,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (23,'修改菜单','menu_query',19,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (24,'删除菜单','menu_query',19,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (25,'查询菜单','menu_query',19,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (26,'角色菜单查看','menu_query',20,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (27,'角色菜单修改','menu_query',20,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (28,'增加角色','menu_query',21,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (29,'删除角色','menu_query',21,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (30,'修改角色','menu_query',21,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (31,'查看角色','menu_query',21,'../aaa.img',2,0);



commit;

-- 主键序列号同步

select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;
select seq_menu.nextval from dual;


-- 5.角色菜单信息
insert into t_rm (rm_id,role_id,menu_id)
values (1, 1,1);
insert into t_rm (rm_id,role_id,menu_id)
values (2, 1,2);
insert into t_rm (rm_id,role_id,menu_id)
values (3, 1,3);
insert into t_rm (rm_id,role_id,menu_id)
values (4, 1,4);
insert into t_rm (rm_id,role_id,menu_id)
values (5, 1,5);
insert into t_rm (rm_id,role_id,menu_id)
values (6, 1,6);
insert into t_rm (rm_id,role_id,menu_id)
values (7, 1,7);
insert into t_rm (rm_id,role_id,menu_id)
values (8, 1,8);
insert into t_rm (rm_id,role_id,menu_id)
values (9, 1,9);
insert into t_rm (rm_id,role_id,menu_id)
values (10, 1,10);
insert into t_rm (rm_id,role_id,menu_id)
values (11, 1,11);
insert into t_rm (rm_id,role_id,menu_id)
values (12, 1,12);
insert into t_rm (rm_id,role_id,menu_id)
values (13, 1,13);
insert into t_rm (rm_id,role_id,menu_id)
values (14, 1,14);
insert into t_rm (rm_id,role_id,menu_id)
values (15, 1,15);
insert into t_rm (rm_id,role_id,menu_id)
values (16, 1,16);
insert into t_rm (rm_id,role_id,menu_id)
values (17, 1,17);
insert into t_rm (rm_id,role_id,menu_id)
values (18, 1,18);
insert into t_rm (rm_id,role_id,menu_id)
values (19, 1,19);
insert into t_rm (rm_id,role_id,menu_id)
values (20, 1,20);
insert into t_rm (rm_id,role_id,menu_id)
values (21, 1,21);
insert into t_rm (rm_id,role_id,menu_id)
values (22, 1,22);
insert into t_rm (rm_id,role_id,menu_id)
values (23, 1,23);
insert into t_rm (rm_id,role_id,menu_id)
values (24, 1,24);
insert into t_rm (rm_id,role_id,menu_id)
values (25, 1,25);
insert into t_rm (rm_id,role_id,menu_id)
values (26, 1,26);
insert into t_rm (rm_id,role_id,menu_id)
values (27, 1,27);
insert into t_rm (rm_id,role_id,menu_id)
values (28, 1,28);
insert into t_rm (rm_id,role_id,menu_id)
values (29, 1,29);
insert into t_rm (rm_id,role_id,menu_id)
values (30, 1,30);
insert into t_rm (rm_id,role_id,menu_id)
values (31, 1,31);

insert into t_rm (rm_id,role_id,menu_id)
values (32, 3,6);
insert into t_rm (rm_id,role_id,menu_id)
values (33, 3,4);
insert into t_rm (rm_id,role_id,menu_id)
values (34, 3,15);
insert into t_rm (rm_id,role_id,menu_id)
values (35, 3,16);
insert into t_rm (rm_id,role_id,menu_id)
values (36, 3,17);
insert into t_rm (rm_id,role_id,menu_id)
values (37, 3,18);
insert into t_rm (rm_id,role_id,menu_id)
values (38, 3,2);
insert into t_rm (rm_id,role_id,menu_id)
values (39, 3,11);
insert into t_rm (rm_id,role_id,menu_id)
values (40, 3,12);
insert into t_rm (rm_id,role_id,menu_id)
values (41, 3,13);
insert into t_rm (rm_id,role_id,menu_id)
values (42, 3,14);

commit;

-- 主键序列号同步
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;
select seq_rm.nextval from dual;



-- 6.仓库信息
insert into t_warehouse (warehouse_id, warehouse_name)
values (1, '龙家湾仓库');
insert into t_warehouse (warehouse_id, warehouse_name)
values (2, '白家里仓库');
insert into t_warehouse (warehouse_id, warehouse_name)
values (3, '东江湖仓库');

commit;

-- 主键序列号同步
select seq_warehouse.nextval from dual;
select seq_warehouse.nextval from dual;
select seq_warehouse.nextval from dual;

-- 7.供应商信息
insert into t_supplier (supplier_id,supplier_name,supplier_people,supplier_iphone,supplier_business,supplier_address,supplier_delivery,supplier_note)
values (1,'凤凰山食品添加有限公司','李大嘴','130456415','各类罐头,压缩食品','凤凰山的萨芬路10区11号',0,'联系人为人爽快,货款不需当面付清');
insert into t_supplier (supplier_id,supplier_name,supplier_people,supplier_iphone,supplier_business,supplier_address,supplier_delivery,supplier_note)
values (2,'发撒就食品添加有限公司','赵晓东','130456415','生鲜蔬菜','发飞洒发路10区11号',0,'联系人较为谨慎,货款需当面付清');
insert into t_supplier (supplier_id,supplier_name,supplier_people,supplier_iphone,supplier_business,supplier_address,supplier_delivery,supplier_note)
values (3,'飞洒发规划添加有限公司','零小东','130456415','各种调味料','凤凰山的萨芬路10区11号',1,'联系人为新联系人');

commit;

-- 主键序列号同步
select seq_supplier.nextval from dual;
select seq_supplier.nextval from dual;
select seq_supplier.nextval from dual;


-- 8.商品信息
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (1,1,'鱼罐头',10000,300,10,20,'舟山鱼罐头');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (2,1,'牛肉罐头',10000,300,50,30,'内蒙古牛肉罐头，采用放养牛制作');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (3,1,'压缩饼干',10000,300,10,5,'军队专用压缩饼干');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (4,2,'特产长茄子',10000,300,3.5,2.5,'湖南的特产长茄子');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (5,2,'大土豆',10000,300,4,2,'湖北特产大土豆');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (6,2,'红辣椒',10000,300,3,5,'四川红辣椒');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (7,3,'精品制食用盐',10000,300,2,1,'南海天然盐场');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (8,3,'厨邦酱油',10000,300,20,10,'一瓶酱油晾制2年');

commit;

-- 主键序列号同步
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;


-- 9.仓库的商品库存信息
insert into t_wg (wg_id, goods_id, warehouse_id, stock)
values (1, 1, 1, 3000);
insert into t_wg (wg_id, goods_id, warehouse_id, stock)
values (2, 2, 1, 3000);
insert into t_wg (wg_id, goods_id, warehouse_id, stock)
values (3, 3, 1, 3000);
insert into t_wg (wg_id, goods_id, warehouse_id, stock)
values (4, 4, 1, 3000);
insert into t_wg (wg_id, goods_id, warehouse_id, stock)
values (5, 5, 1, 3000);
insert into t_wg (wg_id, goods_id, warehouse_id, stock)
values (6, 6, 1, 3000);
insert into t_wg (wg_id, goods_id, warehouse_id, stock)
values (7, 7, 1, 3000);
insert into t_wg (wg_id, goods_id, warehouse_id, stock)
values (8, 8, 1, 3000);
insert into t_wg (wg_id, goods_id, warehouse_id, stock)
values (9, 1, 2, 3000);
insert into t_wg (wg_id, goods_id, warehouse_id, stock)
values (10, 2, 3, 3000);

commit;

-- 主键序列号同步
select seq_wg.nextval from dual;
select seq_wg.nextval from dual;
select seq_wg.nextval from dual;
select seq_wg.nextval from dual;
select seq_wg.nextval from dual;
select seq_wg.nextval from dual;
select seq_wg.nextval from dual;
select seq_wg.nextval from dual;
select seq_wg.nextval from dual;
select seq_wg.nextval from dual;

-- 10.日志信息
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (1, 1, 1, '增加', '增加该库存500件', to_date('2018-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (2, 2, 1, '增加', '增加该库存500件', to_date('2018-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (3, 3, 1, '增加', '增加该库存500件', to_date('2017-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (4, 9, 1, '增加', '增加该库存500件', to_date('2017-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (5, 10, 1,'增加', '增加该库存500件', to_date('2017-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (6, 4, 1,'增加', '增加该库存500件', to_date('2017-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (7, 7, 1,'增加', '增加该库存500件', to_date('2017-10-01', 'yyyy-mm-dd'));

commit;

-- 主键序列号同步
select seq_log.nextval from dual;
select seq_log.nextval from dual;
select seq_log.nextval from dual;

--访问链接表信息
insert into t_accesslink (link_id, link_name, link_address)
values (1, '增加供应商', '/Erp/supplier/add');
insert into t_accesslink (link_id, link_name, link_address)
values (2, '删除供应商', '/Erp/supplier/delete');
insert into t_accesslink (link_id, link_name, link_address)
values (3, '修改供应商', '/Erp/supplier/update');
insert into t_accesslink (link_id, link_name, link_address)
values (4, '分页查询全部供应商', '/Erp/supplier/query');
insert into t_accesslink (link_id, link_name, link_address)
values (5, '根据供应商id查询供应商', '/Erp/supplier/findById');
insert into t_accesslink (link_id, link_name, link_address)
values (6, '根据供应商单位名称查询供应商', '/Erp/supplier/findByName');
insert into t_accesslink (link_id, link_name, link_address)
values (7, '根据供应商联系人查询供应商', '/Erp/supplier/findByPeople');
insert into t_accesslink (link_id, link_name, link_address)
values (8, '查询所有角色信息', '/Erp/role/query');
insert into t_accesslink (link_id, link_name, link_address)
values (9, '根据角色id查询角色菜单信息', '/Erp/roleMenu/findByRoleId');
insert into t_accesslink (link_id, link_name, link_address)
values (10, '修改角色菜单', '/Erp/roleMenu/updateRoleMenu');

commit;

-- 主键序列号同步
select seq_accesslink.nextval from dual;
select seq_accesslink.nextval from dual;
select seq_accesslink.nextval from dual;
select seq_accesslink.nextval from dual;
select seq_accesslink.nextval from dual;
select seq_accesslink.nextval from dual;
select seq_accesslink.nextval from dual;
select seq_accesslink.nextval from dual;
select seq_accesslink.nextval from dual;
select seq_accesslink.nextval from dual;


--菜单拥有的访问链接信息
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (1, 11, 1);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (2, 12, 2);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (3, 12, 4);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (4, 12, 5);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (5, 12, 6);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (6, 12, 7);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (7, 13, 1);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (8, 13, 3);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (9, 13, 4);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (10, 13, 5);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (11, 13, 6);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (12, 13, 7);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (13, 14, 1);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (14, 14, 4);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (15, 14, 5);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (16, 14, 6);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (17, 14, 7);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (18, 31, 8);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (19, 26, 8);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (20, 26, 9);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (21, 27, 9);
insert into t_menu_accesslink (mlink_id, menu_id, link_id)
values (22, 27, 10);

commit;

-- 主键序列号同步
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;
select seq_menu_accesslink.nextval from dual;



-- 开发过程调整菜单
update t_menu set menu_link = 'supplier/add' where menu_id = 11;
update t_menu set menu_link = 'supplier/query?type=2' where menu_id = 12;
update t_menu set menu_link = 'supplier/query?type=3' where menu_id = 13;
update t_menu set menu_link = 'supplier/query' where menu_id = 14;
update t_menu set menu_link = 'role/query?type=1' where menu_id = 26;
update t_menu set menu_link = 'role/query?type=0' where menu_id = 27;

commit;


