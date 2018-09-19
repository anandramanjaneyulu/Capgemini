insert into Associate
	values('A101',2000,'Abhi','Kaush','ECE','Con','ADGFD0213L','ak101@gmail.com');
insert into Associate
	values('B101',2000,'Sesh','Sai','CSE','Sr.Con','SGHAS1356P','ss102@gmail.com');
insert into Associate
	values('C101',2000,'Raghav','Venkat','EEE','Asst.Con','LKAHG0251I','rv103@gmail.com');
insert into Associate
	values('D101',2000,'Sam','Laksh','PIE','Manager','YHGUI4523K','sl104@gmail.com');
insert into Associate
	values('E101',2000,'Krish','Ram','MME','Asst.Manager','RTYWF0154D','kr105@gmail.com');
insert into Associate
	values('F101',2000,'Sraavs','Maddy','EIE','Sr.Manager','OPDFS4502G','sm106@gmail.com');
insert into Associate
	values('G101',2000,'Hari','Priya','FAB','Clerk','AFHGY0164T','hp107@gmail.com',);
insert into Associate
	values('H101',2000,'Goku','Kakarrot','CIVIL','Dean','RTAOS0780B','gk108@gmail.com');
insert into Associate
	values('I101',2000,'Vegeta','Saiyan','ME','Asst.Dean','PHIOS4589A','vs109@gmail.com');
insert into Associate
	values('J101',2000,'Ash','Ketchum','FD','P.Master','SCFDR0549P','ak110@gmail.com');
	

update Associate set managerId='F101' where associateId='A101';
update Associate set managerId='F101' where associateId='G101';
update Associate set managerId='G101' where associateId='B101';
update Associate set managerId='B101' where associateId='J101';
update Associate set managerId='B101' where associateId='D101';
	
	
select a.firstName||''||a.lastName||' reporting to '||m.firstName||''||m.lastName
					from Associate a join Associate m
						on a.managerId=m.associateId;
						
SELECT managerId,COUNT(associateId) from Associate
GROUP BY managerId
HAVING COUNT(associateId) = (SELECT MAX(COUNT(associateId)) FROM Associate GROUP BY managerId);
	
	
	
insert into BankDetails
	values(1478562315,'HDFC','HDFC123054','A101');
insert into BankDetails
	values(1265304875,'SBI','SBIN123054','B101');
insert into BankDetails
	values(4523467915,'ICICI','ICIC123054','C101');
insert into BankDetails
	values(1546325492,'PNB','PNBN123054','D101');
insert into BankDetails
	values(4563128974,'IHB','IHBN123054','E101');
insert into BankDetails
	values(4632152648,'VCV','VCVN123054','F101');
insert into BankDetails
	values(1456328974,'HSBC','HSBC123054','G101');
insert into BankDetails
	values(1265506875,'SCB','SCBN123054','H101');
insert into BankDetails
	values(1265634875,'KOTAK','KTKN123054','I101');
insert into BankDetails
	values(1267890275,'SBT','SBTN123054','J101');
	
	
	
	
insert into Salary
	values(153514,56146,35165,3514,313,31352,351,315,315,315,31353,'HDFC');
insert into Salary
	values(6516351,3131,3513,3151,51135,1355,1135,1335,1362,56126,1651653,'SBI');
insert into Salary
	values(3542441,3513,351,3135,3513,351,848,6854,6513,3513,35146555,'ICICI');
insert into Salary
	values(153514,56146,35165,3514,313,31352,351,315,315,315,31353,'PNB');
insert into Salary
	values(6516351,3131,3513,3151,51135,1355,1135,1335,1362,56126,1651653,'IHB');
insert into Salary
	values(3542441,3513,351,3135,3513,351,848,6854,6513,3513,35146555,'VCV');
insert into Salary
	values(153514,56146,35165,3514,313,31352,351,315,315,315,31353,'HSBC');
insert into Salary
	values(6516351,3131,3513,3151,51135,1355,1135,1335,1362,56126,1651653,'SCB');
insert into Salary
	values(3542441,3513,351,3135,3513,351,848,6854,6513,3513,35146555,'KOTAK');
insert into Salary
	values(3542441,3513,351,3135,3513,351,848,6854,6513,3513,35146555,'SBT');
