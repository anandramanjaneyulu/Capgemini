create table Customer
	(customerId number(10) NOT NULL,
	firstName varchar2(50) NOT NULL,
	lastName varchar2(50) NOT NULL,
	mobileNo number(10) NOT NULL,
	emailId varchar2(20) NOT NULL);

alter table Customer
	add adharNo number(12) NOT NULL
	add pancardNo varchar2(10) NOT NULL
	add dateOfBirth varchar2(20) NOT NULL;
	
	
create table Address
	(city varchar2(20) NOT NULL,
	state varchar2(20) NOT NULL);
	
alter table Address
	add pinCode number(6) NOT NULL
	add country varchar2(20) NOT NULL;
	
	
create table Account
	(accountNo number(20) NOT NULL,
	accountBalance number(15) NOT NULL);
	
alter table Account
	add accountType varchar2(20) NOT NULL;
	
	
create table Transaction
	(transactionId number(20) NOT NULL,
	timeStamp varchar2(20) NOT NULL,
	amount number(20) NOT NULL,
	transactionType varchar2(20) NOT NULL,
	transactionLocation varchar2(20) NOT NULL);
	
alter table Transaction
	add modeOfTransaction varchar2(20) NOT NULL
	add transactionStatus varchar2(20) NOT NULL; 