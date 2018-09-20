***********************************************************************----PL SQL Retrieving----*****************************

declare
		associateRecord Associate%ROWTYPE;
begin
	select * into associateRecord from Associate
			where associateId=&id;
	DBMS_OUTPUT.PUT_LINE('AssocaiteId '||associateRecord.associateId);
	DBMS_OUTPUT.PUT_LINE('FirstName '||associateRecord.firstName);
	DBMS_OUTPUT.PUT_LINE('LastName '||associateRecord.lastName);
end;

***********************************************************************----Usage of Exception----*****************************

declare
		associateRecord Associate%ROWTYPE;
begin
	select * into associateRecord from Associate
			where associateId=&id;
	DBMS_OUTPUT.PUT_LINE('AssocaiteId '||associateRecord.associateId);
	DBMS_OUTPUT.PUT_LINE('FirstName '||associateRecord.firstName);
	DBMS_OUTPUT.PUT_LINE('LastName '||associateRecord.lastName);
	exception
		when
			NO_DATA_FOUND
		then
			DBMS_OUTPUT.PUT_LINE('Associate details not found');
end;

***********************************************************************----Creating Custom Type----*****************************

declare
		type customType is record(
				fName Associate.firstName%TYPE,
				lName Associate.lastName%TYPE);
		fullName customType;
begin
		select firstName, lastName into fullName from Associate where associateId=&id;
		DBMS_OUTPUT.PUT_LINE('FirstName '||fullName.fName);
		DBMS_OUTPUT.PUT_LINE('LastName '||fullName.lName);
		exception
				when
					NO_DATA_FOUND
				then
					DBMS_OUTPUT.PUT_LINE('Associate details not found');
end;

***********************************************************************----No. Comparision----*****************************

declare
	n1 number(10) := 100;
	n2 number(10) := 200;
begin
	if n1>n2
		then
		DBMS_OUTPUT.PUT_LINE(n1 || 'is greater than ' ||n2);
	else
		DBMS_OUTPUT.PUT_LINE(n2 || 'is greater than ' ||n1);
	end if;
end;

***********************************************************************----While Loop----*****************************

declare
	n1 number(10) := 1;
begin
	while n1<=10
		loop
			DBMS_OUTPUT.PUT_LINE(n1);
			n1:=n1+1;
			end loop;
end;

***********************************************************************----No. of Odd no.s----*****************************

declare
	n1 number(10) :=&num;
	n2 number(10) :=1;
	n3 number(10) :=0;
begin
	while(n2<=n1)
	loop
		if mod(n2,2)!=0
			then
				n3:=n3+1;
		end if;
	n2 :=n2+1;
	end loop;
	DBMS_OUTPUT.PUT_LINE(n3);
end;
	
***********************************************************************----Odd or Even----*****************************

declare
	n1 number(10) :=&num;
begin
	if mod(n1,2)=0
		then
			DBMS_OUTPUT.PUT_LINE(n1|| 'is EVEN');
	else
		DBMS_OUTPUT.PUT_LINE(n1|| 'is ODD');
	end if;
end;

***********************************************************************----Cursor Fetching----*****************************

declare
		cursor cName is select * from Associate;
		associateRecord Associate%rowtype;
begin
		if cname%isopen
		then
			null;
		else
			open cName;
		end if;
		fetch cname into associateRecord;
		loop
			fetch cName into associateRecord;
			exit when cname%NOTFOUND;
			DBMS_OUTPUT.PUT_LINE(associateRecord.firstName||' '||associateRecord.lastName);
		end loop;
end;

************************************************************************--------************************************************

declare
		cursor cName is select * from Associate where associateId=&aId;
		associateRecord Associate%rowtype;
		Associate_Not_Found exception;
begin
		if cname%isopen
		then
			null;
		else
			open cName;
		end if;
		fetch cname into associateRecord;
		if cname%NOTFOUND
				then
						raise associate_NOT_FOUND;
		else
				DBMS_OUTPUT.PUT_LINE(associateRecord.firstName|| '' ||associateRecord.lastName);
		end if;
		exception
				when
						associate_NOT_FOUND
				then
						DBMS_OUTPUT.PUT_LINE('Associate details not found');
end;

************************************************************************--------************************************************

select * from user_errors where type='PROCEDURE' and name='INSERT_ASSOCIATE'

create or replace procedure insert_Associate(
	aId in Associate.associateId%Type,
	yInvestment in Associate.yearlyInvestmentUnder80c%Type,
	fName in Associate.firstName%Type,
	lName in Associate.lastName%Type,
	dep in Associate.department%Type,
	desg in Associate.designation%type,
	pCard in Associate.panCard%Type,
	eId in Associate.emailId%Type,
	mId in Associate.ManagerId%type)
is
begin
		insert into Associate values(aId,yInvestment,fName,lName,dep,desg,pCard,eId,mId);
		commit;
end;

begin
	insert_Associate('K101',1000,'Jiren','Kai','ADM','P.Master','SCGSR4970P','jk111@gmail.com','D101');
end;

************************************************************************--------************************************************

select * from user_errors where type='PROCEDURE'

================================================================================================================================
create or replace function associatecountfordepartment(
depname in associate.department%type;
return number is
associatecount number(10) :=0;
BEGIN
SELECT COUNT(*) INTO ASSOCIATECOUNT FROM ASSOCIATE WHERE DEPARTMENT=DEPNAME;
END;
BEGIN
DBMS_OUTPUT.PUTLINE(ASSOCIATECOUNTFORDEPARTMENT('YTP'));
END;
===============================================================================================================
create table associatelog(
logmessage varchar2(50);
INSERTDATE DATE
)
/

CREATE OR REPLACE TRIGGER
INSERT_ASSOCIATE_TRIGGER
AFTER INSERT ON ASSOCIATE FOR EACH ROW
BEGIN
INSERT INTO ASSOCIATELOG VALUES('RECORD INSERTED',SYSDATE);
END;
/
























