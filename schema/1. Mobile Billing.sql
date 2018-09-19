create table BillingCustomer
	(customerId number(10) NOT NULL,
	Primary Key(customerId),
	firstName varchar2(20) NOT NULL,
	lastName varchar2(20) NOT NULL,
	emailId varchar2(20) NOT NULL);
	
alter table BillingCustomer
	add adharNo number(12) NOT NULL
	add pancardNo varchar2(10) NOT NULL
	add dateOfBirth varchar2(20) NOT NULL;
	
	
create table BillingAddress
	(city varchar2(20) NOT NULL,
	state varchar2(20) NOT NULL,
	pinCode number(6) NOT NULL,
	country varchar2(20) NOT NULL,
	CustomerId number(10) NOT NULL,
	Foreign Key(customerId) REFERENCES BillingCustomer(CustomerId));
	
	
create table PostPaidAccount
	(mobileNo number(10) NOT NULL,
	Primary Key(mobileNo),
	CustomerId number(10) NOT NULL,
	Foreign Key(customerId) REFERENCES BillingCustomer(CustomerId),
	planId varchar2(20) NOT NULL,
	Foreign Key(planId) REFERENCES Plan(planId));
	
	
create table Plan
	(planID varchar2(20) NOT NULL,
	Primary Key(planID),
	monthlyRental number(20) NOT NULL,
	freeLocalCalls number(20) NOT NULL,
	freeStdCalls number(20) NOT NULL,
	freeLocalSMS number(20) NOT NULL,
	freeStdSMS number(20),
	freeInternetDataUsageUnits number(20));
	
alter table Plan
	add localCallRate varchar2(20) NOT NULL
	add stdCallRate varchar2(20) NOT NULL
	add localSMSRate varchar2(20) NOT NULL
	add stdSMSRate varchar2(20) NOT NULL
	add internetDataUsageRate varchar2(20) NOT NULL
	add planCircle varchar(20) NOT NULL
	add planName varchar(20) NOT NULL;
	

create table Bill
	(billID varchar2(10) NOT NULL,
	Primary Key(billID),
	noOfLocalSMS number(10),
	noOfStdSMS number(10),
	noOfLocalCalls number(10),
	noOfStdCalls number(10),
	internetDataUsageUnits number(20),
	internetDataUsageUnitsAmount number(20),
	billMonth varchar2(10) NOT NULL,
	stateGST number(5,2) NOT NULL,
	centralGST number(5,2) NOT NULL,
	totalBillAmount number(10) NOT NULL,
	localSMSAmount number(10),
	stdSMSAmount number(10),
	localCallAmount number(10),
	mobileNo number(10) NOT NULL,
	Foreign Key(mobileNo) REFERENCES PostPaidAccount(mobileNo));
	