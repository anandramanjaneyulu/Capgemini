1. select Staff_Name as Name,design_code as Designation from Staff_Master where HireDate<'01-JAN-03' and (Staff_sal between 12000 and 25000);
2. select Staff_code,Staff_Name,Dept_code from Staff_Master
    where extract(year from sysdate) - extract(year from HireDate) >=16
	ORDER BY (sysdate-HireDate);
3. select * from Staff_Master where Mgr_code is null;
4. select * from Book_Master 
where book_pub_year between 2001 and 2003;
 select * from Book_Master
where Book_Name LIKE '%&%';
5. Select Staff_Name from Staff_Master where Staff_Name like '%_%';


1.select Staff_Name,LPAD(Staff_sal,15,'$') from Staff_Master;
select Student_name,DATE_FORMAT(Student_dob,"%M, %d %Y") from Student_Master
where DAYNAME(Student_dob) in ('Saturday','Sunday');

2.SELECT Student_name,TO_CHAR(Student_dob,'MONTH, DD YYYY') from Student_Master
where TO_CHAR(Student_dob,'dy') in ('sat','sun');

3.select ROUND(months_between(Sysdate,HireDate)) AS MonthsWorked from Staff_Master;
order by 1;

4. select * from Staff_Master where extract(month from HireDate)=12 and extract(day from HireDate)<16;

6. select Staff_Name,HireDate,TO_CHAR(HireDate,'dy') AS DAY
from Staff_Master
Order by mod(TO_CHAR(HireDate,'d')+5,7);

7.SELECT INSTR('Mississippi','i',1,3) from dual;

9. SELECT STUDENT_CODE,STUDENT_NAME,
DECODE(DEPT_CODE, 20, 'Electrical',
30,'Electronics',
'Others')Dept_name
from Student_Master;

5. Select Staff_Name,Staff_sal,GRADE,
CASE
WHEN Staff_sal>=500000 Then 'A'
WHEN Staff_sal>=25000 and Staff_sal<50000 then 'B'
WHEN Staff_sal>=10000 and StafF_sal<25000 then 'C'
ELSE 'D'
END CASE 
 FROM STAFF_MASTER;
7. SELECT to_char(next_day(last_day(sysdate)-7,'FRIDAY'),'DDSPTH "Of" month, YYYY') from DUAL;

2.2
1. select round(max(staff_sal)) Maximum, round(min(Staff_sal)) Minimum, round(Sum(staff_sal)) Total, round(Avg(staff_sal)) Average from Staff_Master
group by Dept_code;
2. select dept_code,count(mgr_code) Total_Number_Of_Managers from Staff_Master
group by dept_code;
3. select DEPT_CODE,sum(staff_sal) sum from Staff_master where mgr_code is null
group by dept_code having  sum(Mgr_code)>=20000;
...select Deptno,sum(sal) sum from Emp where mgr is null
group by deptno having  sum(sal)>=20000;

3.1
1. select s.staff_name,s.dept_code,d.dept_name 
from staff_master s left join department_master d 
on s.dept_code=d.dept_code
where staff_sal>20000;


2. select s.staff_code as Staff#, s.staff_name as Staff,d.dept_name,s.mgr_code as Mgr#
from Staff_master s join Department_master d on s.dept_code=d.dept_code;


3. select s.student_code,s.student_name,b.book_code,b.book_name
from student_master s join book_Transactions t on 
t.student_code=s.student_code
join book_master b on
b.book_code=t.book_code
where book_expected_return_date=sysdate;


4. update book_transactions
set book_issue_date='01-sep-18'
where staff_code=100007;
select s.staff_code,s.staff_name,de.dept_name,m.design_name,b.book_code,b.book_name,t.book_issue_date
from staff_master s join department_master d on
s.dept_code=d.dept_code
join designation_master m on 
s.design_code=m.design_code
join book_transactions t on
s.staff_code=t.staff_code
join book_master b on
t.book_code=b.book_code
join department_master de
on d.dept_code=de.dept_code
where to_date(sysdate,'dd-mm-yyyy')-to_date(t.book_issue_date,'dd-mm-yyyy')<=30;

5.select s.staff_code,s.staff_name,d.design_name,dp.dept_name,b.book_code,b.book_name,b.book_pub_author,
(5*(to_date(sysdate,'dd-mm-yyyy')-to_date(t.book_expected_return_date,'dd-mm-yyyy'))) as fine from Staff_master s 
join designation_master d on d.design_code=s.design_code
join department_master dp
on dp.dept_code=s.dept_code
join book_transactions t on
s.staff_code=t.staff_code
join book_master b
on b.book_code=t.book_code
where book_actual_return_date is null;

6.select staff_code,staff_name,staff_sal from staff_master 
where staff_sal<(select avg(staff_sal)from staff_master);

7.select book_pub_author,book_name from book_master 
where book_pub_author in (select book_pub_author from book_master
group by book_pub_author
having count(*)>1);

8. select s.staff_code,s.staff_name,d.dept_name
from staff_master s join department_master d
on s.dept_code=d.dept_code
where s.staff_code in (select t.staff_code from book_transactions t
group by staff_code
having count(*) > 1);

9. select s.student_code,s.student_name,d.dept_name
from student_master s join department_master d
on s.dept_code=d.dept_code
having count(student_code) in (select max(count(student_code)) from student_master group by student_code) 
group by student_code,student_name,dept_name;

10. update staff_master set hiredate ='15-jul-18' where staff_code=100007;
update staff_master set hiredate ='20-jul-18' where staff_code=100008;
update staff_master set hiredate ='25-jul-18' where staff_code=100006;
select s.staff_code,s.staff_name,d.dept_name,de.design_name
from staff_master s join department_master d on 
d.dept_code=s.dept_code
join designation_master de on
de.design_code=s.design_code
where to_date(sysdate,'dd-mm-yyyy')-to_date(hiredate,'dd-mm-yyyy')<90;

13. select d.dept_code,d.dept_name,(count(s.student_code) + count(st.staff_code)) as numberOfPeople from
department_master d join student_master s on
s.dept_code=d.dept_code
join staff_master st on
d.dept_code=st.dept_code
group by d.dept_code,d.dept_name;

12. update book_transactions set book_expected_return_date='17-sep-18' where book_code=10000007;

select t.book_code,t.book_issue_date,t.book_expected_return_date,t.student_code,t.staff_code,upper(b.book_name)
from book_transactions t join book_master b
on t.book_code=b.book_code
where t.book_expected_return_date=to_date(next_day(sysdate,'MONDAY')-7,'dd-month-yy');

9. select s.student_code,s.student_name,d.dept_name
from student_master s join department_master d
on s.dept_code=d.dept_code
having s.dept_code in (select dept_code from student_master
having count(student_code)=(select max(count(student_code)) from student_master group by dept_code)
group by s.dept_code,student_code);


4.1

1. create table customer1(
customerId number(5) not null,
cust_Name varchar2(20) not null,
Address1 Varchar2(30) not null,
Address2 varchar2(30) null);

2. alter table customer1
modify cust_name varchar(30);
alter table customer1
rename column cust_name to customerNume;

3.a) alter table customer1
add Gender varchar2(1);
alter table customer1
add Age number(3);
alter table customer1
add PhoneNo number(10);

b) alter table customer1 
rename to Cust_Table;

4. insert into cust_table
values(1000, 'Allen', '#115 Chicago', '#115 Chicago', 'M', 25, 7878776);
insert into cust_table
values(1001, 'George', '#116 France', '#116 France', 'M', 25, 434524);
insert into cust_table
values(1002, 'Becker', '#114 New York', '#114 New York', 'M', 45, 431525);

5. alter table cust_table
add constraint custId_Prim primary key(CustomerId);

6.insert into cust_table
values(1002, 'John', '#114 Chicago', '#114 Chicago', 'M', 45, 439525);

7. alter table cust_table
drop constraint custId_Prim;

insert into cust_table
values(1002, 'Becker', '#114 New York', '#114 New york' , 'M', 45, 431525);
insert into cust_table
values(1003, 'Nanapatekar', '#115 India', '#115 India' , 'M', 45, 431525);

8. alter table cust_table
add constraint custId_Prim primary key(CustomerId);

9. alter table cust_table
drop constraint custId_Prim;

insert into cust_table
values(1002, 'Becker', '#114 New York', '#114 New york' , 'M', 45, 431525,15000.50);
insert into cust_table
values(1003, 'Nanapatekar', '#115 India', '#115 India' , 'M', 45, 431525,20000.50);

10. truncate table cust_table;

11. alter table cust_table
add email varchar(30);

12. alter table cust_table
drop column email;

13.create table suppliers(
suppId varchar(20),
sName varchar(20),
addr1 varchar(30),
addr2 varchar(30),
Contactno number(10));

14. drop table suppliers;

create table CustomerMaster(
customerId number(5),
customerName varchar2(30) not null,
Address1 Varchar2(30) not null,
Address2 varchar2(30),
gender varchar2(1),
Age number(3),
phoneNo number(10));
alter table customermaster
add constraint CustId_PK primary key(customerId);

15. create table AccountsMaster(
customerId number(5),
AccountNumber Number(10,2),
AccountType	varChar(3),
 LedgerBalance Number(10,2) Not Null);
 alter table AccountsMaster
 add constraint Acc_PK primary key(AccountNumber);
16. alter table AccountsMaster
 add constraint Cust_acc_fk foreign key(customerId) references CustomerMaster;

17.insert into cust_table
values(1000, 'Allen', '#115 Chicago', '#115 Chicago', 'M', 25, 7878776);
insert into cust_table
values(1001, 'George', '#116 France', '#116 France', 'M', 25, 434524);
insert into cust_table
values(1002, 'Becker', '#114 New York', '#114 New York', 'M', 45, 431525);

18. alter table accountsmaster
add check(AccountType='NRI' OR AccountType='IND');
 
19. alter table accountsmaster
add constraint Balance_check check(LedgerBalance>5000);
 
20. 
21.

22. CREATE VIEW Acc_View AS
SELECT a.CustomerId as CustomerCode,c.CustomerName as AccountHolderName,
AccountNumber, AccountType as Type, LedgerBalance as Balance
FROM AccountsMaster a join CustomerMaster c
on a.customerId=c.customerId;

25. create sequence seq_Dept
minvalue 40
maxvalue 200
start with 40
increment by 10
cache 20;

26.create table dept_mast(
dept_code number(10),
dept_name varchar(10));

insert into dept_mast
values(seq_Dept.nextval,'mme');
insert into dept_mast
values(seq_Dept.nextval,'chem');
insert into dept_mast
values(seq_Dept.nextval,'ice');

27. drop sequence seq_Dept;


 5.1 

1.create table employee1 as  select * from emp where 1=4;
2. select * from employee1;
3. update employee1 set job=(select job from employee1 where empno=7788) where empno=7698;
update employee1 set deptno=(select deptno from employee1 where empno=7788) where empno=7698;
4. 
5.update employee1 set deptno=(select deptno from employee1 where empno=7369) where empno=7566;
6.insert into employee1
values(&empno,'&Ename','&jpb',&mgr,'&hiredate',&sal,&comm,&Deptno);

6.1
1. insert into customermaster
values(&customerId,&customerNAME,&Address1,&Address2,&Gender,&Age,&PhoneNo);
2. Savepoint SP1;
3.insert into customermaster
values(&customerId,&customerNAME,&Address1,&Address2,&Gender,&Age,&PhoneNo);
4. Rollback to SP1;