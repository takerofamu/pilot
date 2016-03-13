create if not exists table invoice_details(
invoice_details_id int(11) not null auto_increment comment '�������ڍ�ID',
invoice_id int(11) not null comment '������ID',
insurance_type tinynit(1) null comment '�ی����',
insurance_apply_dest varchar(100) null comment '�ی��K�p�Ώ�',
insurance_start_day date null comment '�ی��J�n��',
insurance_end_day date null comment '�ی��I����',
security_number varchar(20) null comment '�،��ԍ�',
payment_amount int null comment '�ی���',
invoice_details_remark1 varchar(200) null comment '���l�P(�N�ԕی���)',
invoice_details_remark2 varchar(200) null comment '���l�Q(������)',
tenant_id int(11) not null comment '',
primary key(invoice_details_id),
key(invoice_details_id, invoice_id)) comment '�������ڍ׃e�[�u��';


create if not exists table invoice_info(
invoice_id int(11) not null auto_increment comment '',
customer_name varchar(100) null comment '',
transfer_dest_id int(11) not null comment '',
print_sign_id int(11) not null comment '',
payment_deadline date not null comment '',
payment_date date null comment '',
created_date date null comment comment '',
recreated_date date null comment '',
resp_user_id int(11) not null comment '',
created_user_id int(11) not null comment '',
confirm_user_id int(11) not null comment '',



	public List<String> getInvoiceDetailsList(String invoice_id){
		return jdbcManager.selectBySql(String.class, "select * from invoice_details where invoice_id =? ", new Object[]{invoice_id}).getResultList();
		
		
	}