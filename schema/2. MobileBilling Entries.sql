insert into BillingCustomer
	values(001,'Kaushal','Army','2K_walk@bigboss.com',123987,'Cd45678','13031997');
insert into BillingCustomer
	values(002,'Sanjana','Anne','1stweek@bigboss.com',145387,'Cd487578','1358697');
insert into BillingCustomer
	values(003,'Nutan','Naidu','2ndweek@bigboss.com',789567,'bg562578','1583697');
insert into BillingCustomer
	values(004,'Kireeti','Dharmaraj','3rdweek@bigboss.com',85687,'hg25645','853599');
insert into BillingCustomer
	values(005,'Tanish','Tuskers','130K@bigboss.com',546327,'SY15678','1385267');
insert into BillingCustomer
	values(006,'Deepti','Banana','tanish@bigboss.com',256317,'Th857478','1300297');
insert into BillingCustomer
	values(007,'Samrat','Reddy','tejaswi@bigboss.com',574178,'TJ58278','13751997');
insert into BillingCustomer
	values(008,'Deepthi','Nallamothu','bza@bigboss.com',17527,'BZA25678','135847');
insert into BillingCustomer
	values(009,'Roll','Rida','galli@bigboss.com',124527,'GLP45278','18954297');
insert into BillingCustomer
	values(010,'Amit','Tiwary','nonsense@bigboss.com',12287,'C68578','1301235');
	
	
	
insert into BillingAddress
	values('Rajahmundry','AP',533101,'India',001);
insert into BillingAddress
	values('Pune','Maharastra',733101,'India',002);
insert into BillingAddress
	values('South Carolina','Texas',95101,'USA',003);
insert into BillingAddress
	values('Sussex','Windsor',2101,'England',004);
insert into BillingAddress
	values('Seoul','Wogram',8501,'South korea',005);
insert into BillingAddress
	values('Pyongyang','Ho Ji Ming',53251,'North Korea',006);
insert into BillingAddress
	values('Jin u Lin','Nyuchitang',2501,'Vietnam',007);
insert into BillingAddress
	values('Edinburgh','Bairstock',55601,'Scotland',008);
insert into BillingAddress
	values('Jamshedpur','Jharkhand',831014,'India',009);
insert into BillingAddress
	values('Karimnagar','Telangana',530581,'India',010);
	
	
	
insert into PostPaidAccount
	values(9652452457,001,801);
insert into PostPaidAccount
	values(7702731631,002,802);
insert into PostPaidAccount
	values(7330616311,003,803);
insert into PostPaidAccount
	values(7702921676,004,804);
insert into PostPaidAccount
	values(741618180,005,805);
insert into PostPaidAccount
	values(233430128,006,806);
insert into PostPaidAccount
	values(5252525252,007,807);
insert into PostPaidAccount
	values(2023669753,008,808);
insert into PostPaidAccount
	values(633245987,009,809);
insert into PostPaidAccount
	values(8521479630,010,810);
	
	
	
insert into Plan
	values(801,100,10,10,20,20,150,'1.2pPERsec','1.5pPERsec','1.8pPERmsg','1.0pPERmsg','1.2pPERmb','HP','UData');
insert into Plan
	values(802,200,20,20,30,30,250,'2.2pPERsec','2.5pPERsec','2.8pPERmsg','2.0pPERmsg','2.2pPERmb','MP','UTT');
insert into Plan
	values(803,300,30,30,40,40,350,'3.2pPERsec','3.5pPERsec','3.8pPERmsg','3.0pPERmsg','3.2pPERmb','AP','UMsg');
insert into Plan
	values(804,400,40,40,50,50,450,'4.2pPERsec','4.5pPERsec','4.8pPERmsg','4.0pPERmsg','4.2pPERmb','UP','LTTT');
insert into Plan
	values(805,500,50,50,60,60,550,'5.2pPERsec','5.5pPERsec','5.8pPERmsg','5.0pPERmsg','5.2pPERmb','ArP','UData');
insert into Plan
	values(806,600,60,60,70,70,650,'6.2pPERsec','6.5pPERsec','6.8pPERmsg','6.0pPERmsg','6.2pPERmb','OD','UData');
insert into Plan
	values(807,700,70,70,80,80,750,'7.2pPERsec','7.5pPERsec','7.8pPERmsg','7.0pPERmsg','7.2pPERmb','KL','UTT');
insert into Plan
	values(808,800,80,80,90,90,850,'8.2pPERsec','8.5pPERsec','8.8pPERmsg','8.0pPERmsg','8.2pPERmb','MH','LTTT');
insert into Plan
	values(809,900,90,90,100,100,950,'9.2pPERsec','9.5pPERsec','9.8pPERmsg','9.0pPERmsg','9.2pPERmb','RJ','UMsg');
insert into Plan
	values(810,1000,100,100,200,200,1050,'10.2pPERsec','10.5pPERsec','10.8pPERmsg','10.0pPERmsg','10.2pPERmb','GJ','UData');

	

insert into Bill
    values(601,100,10,10,20,20,150,'JAN',1.2,1.5,110,120,130,140,9652452457);
insert into Bill
    values(602,200,20,20,30,30,250,'FEB',2.2,2.5,210,220,230,240,7702731631);
insert into Bill
    values(603,300,30,30,40,40,350,'MAR',3.2,3.5,310,320,330,340,7330616311);
insert into Bill
    values(604,400,40,40,50,50,450,'APR',4.2,4.5,410,420,430,440,7702921676);
insert into Bill
    values(605,500,50,50,60,60,550,'MAY',5.2,5.5,510,520,530,540,741618180);
insert into Bill
    values(606,600,60,60,70,70,650,'JUN',6.2,6.5,610,620,630,640,233430128);
insert into Bill
    values(607,700,70,70,80,80,750,'JUL',7.2,7.5,710,720,730,740,5252525252);
insert into Bill
    values(608,800,80,80,90,90,850,'AUG',8.2,8.5,810,820,830,840,2023669753);
insert into Bill
    values(609,900,90,90,100,100,950,'SEP',9.2,9.5,910,920,930,940,633245987);
insert into Bill
    values(610,1000,100,100,110,110,1050,'OCT',10.2,10.5,1010,1020,1030,1040,8521479630);
	
	
	

