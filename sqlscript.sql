create if not exists table invoice_details(
invoice_details_id int(11) not null auto_increment comment '請求書詳細ID',
invoice_id int(11) not null comment '請求書ID',
insurance_type tinynit(1) null comment '保険種目',
insurance_apply_dest varchar(100) null comment '保険適用対象',
insurance_start_day date null comment '保険開始日',
insurance_end_day date null comment '保険終了日',
security_number varchar(20) null comment '証券番号',
payment_amount int null comment '保険料',
invoice_details_remark1 varchar(200) null comment '備考１(年間保険料)',
invoice_details_remark2 varchar(200) null comment '備考２(分割回数)',
tenant_id int(11) not null comment '',
primary key(invoice_details_id),
key(invoice_details_id, invoice_id)) comment '請求書詳細テーブル';


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