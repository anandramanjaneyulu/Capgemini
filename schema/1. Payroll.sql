create table Associate
	(associateID varchar2(10) NOT NULL,
	Primary Key(associateID),
	yearlyInvestmentUnder80C number(20) NOT NULL,
	firstName varchar2(50) NOT NULL,
	lastName varchar2(50) NOT NULL,
	department varchar2(20) NOT NULL,
	designation varchar2(20) NOT NULL,
	pancard varchar2(10) NOT NULL,
	emailId varchar2(20) NOT NULL);
	
alter table associate
	add managerId varchar2(10);






	
create table BankDetails
	(accountNumber number(25) NOT NULL,
	bankName varchar2(50) NOT NULL,
	Primary Key(bankName),
	ifscCode varchar2(10) NOT NULL,
	associateID varchar2(10) NOT NULL,
	Foreign Key(associateID) REFERENCES Associate(associateID));







	
create  table Salary
	(basicSalary number(20) NOT NULL,
	hra number(20) NOT NULL,
	conveyenceAllowance number(20) NOT NULL,	
	otherAllowance number(20) NOT NULL,
	personalAllowance number(20) NOT NULL,
	monthlyTax number(20) NOT NULL,
	epf number(20) NOT NULL,
	companyPf number(20) NOT NULL,
	gratuity number(20) NOT NULL,
	grossSalary number(20) NOT NULL,
	netSalary number(20) NOT NULL,
	bankName varchar2(50) NOT NULL,
	Foreign Key(bankName) REFERENCES BankDetails(bankName));

