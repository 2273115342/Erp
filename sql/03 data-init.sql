-- 1.������Ϣ
insert into t_department(dept_id, dept_name)
values(1, '������');

insert into t_department(dept_id, dept_name)
values(2, '���۲�');

insert into t_department(dept_id, dept_name)
values(3, '����');
commit;

-- �������к�ͬ��
select seq_department.nextval from dual;
select seq_department.nextval from dual;
select seq_department.nextval from dual;

-- 2.��ɫ��Ϣ
insert into t_role(role_id, role_name)
values(1, 'ϵͳ����Ա');
insert into t_role(role_id, role_name)
values(2, '���ž���');
insert into t_role(role_id, role_name)
values(3, '�ֿ����Ա');
insert into t_role(role_id, role_name)
values(4, '��ͨԱ��');

-- �������к�ͬ��
select seq_role.nextval from dual;
select seq_role.nextval from dual;
select seq_role.nextval from dual;
select seq_role.nextval from dual;

-- 3.�û���Ϣ
insert into t_employees (e_id, dept_id, role_id, e_name, e_iphone, e_note, e_account, e_password)
values (1, 1, 1,'����',134567985,'��������̿�','zhangsan','123456');

insert into t_employees (e_id, dept_id, role_id, e_name, e_iphone, e_note, e_account, e_password)
values (2, 2, 2,'����',4165413498,'�ڷܺ�ѧ�������ֹ�','lisi','123456');

insert into t_employees (e_id, dept_id, role_id, e_name, e_iphone, e_note, e_account, e_password)
values (3, 3, 3,'����',15645632456,'�Ը��ֹ����ϣ����ڹ�ͨ','wangwu','123456');
commit;

-- �������к�ͬ��
select seq_employees.nextval from dual;
select seq_employees.nextval from dual;
select seq_employees.nextval from dual;


-- 4.�˵���Ϣ
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (1,'�û�����','menu_query',null,'../aaa.img',1,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (2,'��Ӧ�̹���','menu_query',null,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (3,'���Ź���','menu_query',null,'../aaa.img',3,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (4,'��Ʒ����','menu_query',null,'../aaa.img',4,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (5,'��־����','menu_query',null,'../aaa.img',5,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (6,'�ֿ����','menu_query',null,'../aaa.img',6,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (19,'�˵�����','menu_query',null,'../aaa.img',7,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (20,'��ɫ�˵�����','menu_query',null,'../aaa.img',8,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (21,'��ɫ����','menu_query',null,'../aaa.img',9,0);

insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (7,'��ѯ�û�','menu_query',1,'../aaa.img',6,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (8,'�����û�','menu_query',1,'../aaa.img',6,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (9,'ɾ���û�','menu_query',1,'../aaa.img',6,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (10,'�޸��û�','menu_query',1,'../aaa.img',6,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (11,'���ӹ�Ӧ��','menu_query',2,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (12,'ɾ����Ӧ��','menu_query',2,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (13,'�޸Ĺ�Ӧ��','menu_query',2,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (14,'��ѯ��Ӧ��','menu_query',2,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (15,'��ѯ��Ʒ','menu_query',4,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (16,'�޸���Ʒ','menu_query',4,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (17,'ɾ����Ʒ','menu_query',4,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (18,'������Ʒ','menu_query',4,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (22,'���Ӳ˵�','menu_query',19,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (23,'�޸Ĳ˵�','menu_query',19,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (24,'ɾ���˵�','menu_query',19,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (25,'��ѯ�˵�','menu_query',19,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (26,'��ɫ�˵��鿴','menu_query',20,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (27,'��ɫ�˵��޸�','menu_query',20,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (28,'���ӽ�ɫ','menu_query',21,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (29,'ɾ����ɫ','menu_query',21,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (30,'�޸Ľ�ɫ','menu_query',21,'../aaa.img',2,0);
insert into t_menu (menu_id, menu_name,menu_link,parent_id,menu_img,disp_order,is_have)
values (31,'�鿴��ɫ','menu_query',21,'../aaa.img',2,0);



commit;

-- �������к�ͬ��

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


-- 5.��ɫ�˵���Ϣ
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

-- �������к�ͬ��
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



-- 6.�ֿ���Ϣ
insert into t_warehouse (warehouse_id, warehouse_name)
values (1, '������ֿ�');
insert into t_warehouse (warehouse_id, warehouse_name)
values (2, '�׼���ֿ�');
insert into t_warehouse (warehouse_id, warehouse_name)
values (3, '�������ֿ�');

commit;

-- �������к�ͬ��
select seq_warehouse.nextval from dual;
select seq_warehouse.nextval from dual;
select seq_warehouse.nextval from dual;

-- 7.��Ӧ����Ϣ
insert into t_supplier (supplier_id,supplier_name,supplier_people,supplier_iphone,supplier_business,supplier_address,supplier_delivery,supplier_note)
values (1,'���ɽʳƷ������޹�˾','�����','130456415','�����ͷ,ѹ��ʳƷ','���ɽ������·10��11��',0,'��ϵ��Ϊ��ˬ��,����赱�渶��');
insert into t_supplier (supplier_id,supplier_name,supplier_people,supplier_iphone,supplier_business,supplier_address,supplier_delivery,supplier_note)
values (2,'������ʳƷ������޹�˾','������','130456415','�����߲�','��������·10��11��',0,'��ϵ�˽�Ϊ����,�����赱�渶��');
insert into t_supplier (supplier_id,supplier_name,supplier_people,supplier_iphone,supplier_business,supplier_address,supplier_delivery,supplier_note)
values (3,'�������滮������޹�˾','��С��','130456415','���ֵ�ζ��','���ɽ������·10��11��',1,'��ϵ��Ϊ����ϵ��');

commit;

-- �������к�ͬ��
select seq_supplier.nextval from dual;
select seq_supplier.nextval from dual;
select seq_supplier.nextval from dual;


-- 8.��Ʒ��Ϣ
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (1,1,'���ͷ',10000,300,10,20,'��ɽ���ͷ');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (2,1,'ţ���ͷ',10000,300,50,30,'���ɹ�ţ���ͷ�����÷���ţ����');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (3,1,'ѹ������',10000,300,10,5,'����ר��ѹ������');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (4,2,'�ز�������',10000,300,3.5,2.5,'���ϵ��ز�������');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (5,2,'������',10000,300,4,2,'�����ز�������');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (6,2,'������',10000,300,3,5,'�Ĵ�������');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (7,3,'��Ʒ��ʳ����',10000,300,2,1,'�Ϻ���Ȼ�γ�');
insert into t_goods (goods_id, supplier_id, goods_name,goods_top,goods_floor,goods_price,goods_cost,goods_note)
values (8,3,'�����',10000,300,20,10,'һƿ��������2��');

commit;

-- �������к�ͬ��
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;
select seq_goods.nextval from dual;


-- 9.�ֿ����Ʒ�����Ϣ
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

-- �������к�ͬ��
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

-- 10.��־��Ϣ
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (1, 1, 1, '����', '���Ӹÿ��500��', to_date('2018-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (2, 2, 1, '����', '���Ӹÿ��500��', to_date('2018-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (3, 3, 1, '����', '���Ӹÿ��500��', to_date('2017-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (4, 9, 1, '����', '���Ӹÿ��500��', to_date('2017-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (5, 10, 1,'����', '���Ӹÿ��500��', to_date('2017-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (6, 4, 1,'����', '���Ӹÿ��500��', to_date('2017-10-01', 'yyyy-mm-dd'));
insert into t_log (log_id, wg_id, e_id, log_type, log_details,log_time)
values (7, 7, 1,'����', '���Ӹÿ��500��', to_date('2017-10-01', 'yyyy-mm-dd'));

commit;

-- �������к�ͬ��
select seq_log.nextval from dual;
select seq_log.nextval from dual;
select seq_log.nextval from dual;

--�������ӱ���Ϣ
insert into t_accesslink (link_id, link_name, link_address)
values (1, '���ӹ�Ӧ��', '/Erp/supplier/add');
insert into t_accesslink (link_id, link_name, link_address)
values (2, 'ɾ����Ӧ��', '/Erp/supplier/delete');
insert into t_accesslink (link_id, link_name, link_address)
values (3, '�޸Ĺ�Ӧ��', '/Erp/supplier/update');
insert into t_accesslink (link_id, link_name, link_address)
values (4, '��ҳ��ѯȫ����Ӧ��', '/Erp/supplier/query');
insert into t_accesslink (link_id, link_name, link_address)
values (5, '���ݹ�Ӧ��id��ѯ��Ӧ��', '/Erp/supplier/findById');
insert into t_accesslink (link_id, link_name, link_address)
values (6, '���ݹ�Ӧ�̵�λ���Ʋ�ѯ��Ӧ��', '/Erp/supplier/findByName');
insert into t_accesslink (link_id, link_name, link_address)
values (7, '���ݹ�Ӧ����ϵ�˲�ѯ��Ӧ��', '/Erp/supplier/findByPeople');
insert into t_accesslink (link_id, link_name, link_address)
values (8, '��ѯ���н�ɫ��Ϣ', '/Erp/role/query');
insert into t_accesslink (link_id, link_name, link_address)
values (9, '���ݽ�ɫid��ѯ��ɫ�˵���Ϣ', '/Erp/roleMenu/findByRoleId');
insert into t_accesslink (link_id, link_name, link_address)
values (10, '�޸Ľ�ɫ�˵�', '/Erp/roleMenu/updateRoleMenu');

commit;

-- �������к�ͬ��
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


--�˵�ӵ�еķ���������Ϣ
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

-- �������к�ͬ��
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



-- �������̵����˵�
update t_menu set menu_link = 'supplier/add' where menu_id = 11;
update t_menu set menu_link = 'supplier/query?type=2' where menu_id = 12;
update t_menu set menu_link = 'supplier/query?type=3' where menu_id = 13;
update t_menu set menu_link = 'supplier/query' where menu_id = 14;
update t_menu set menu_link = 'role/query?type=1' where menu_id = 26;
update t_menu set menu_link = 'role/query?type=0' where menu_id = 27;

commit;


