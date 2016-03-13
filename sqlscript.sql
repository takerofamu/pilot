create if not exists table invoice_details(
invoice_details_id int(11) not null auto_increment comment '¿Ú×ID',
invoice_id int(11) not null comment '¿ID',
insurance_type tinynit(1) null comment 'Û¯íÚ',
insurance_apply_dest varchar(100) null comment 'Û¯KpÎÛ',
insurance_start_day date null comment 'Û¯Jnú',
insurance_end_day date null comment 'Û¯I¹ú',
security_number varchar(20) null comment 'ØÔ',
payment_amount int null comment 'Û¯¿',
invoice_details_remark1 varchar(200) null comment 'õlP(NÔÛ¯¿)',
invoice_details_remark2 varchar(200) null comment 'õlQ(ªñ)',
tenant_id int(11) not null comment '',
primary key(invoice_details_id),
key(invoice_details_id, invoice_id)) comment '¿Ú×e[u';


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