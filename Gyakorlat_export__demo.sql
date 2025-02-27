--------------------------------------------------------
--  File created - vasárnap-március-09-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table REGIONS
--------------------------------------------------------

  Create Table "REGIONS" 
   (	"REGION_ID" Number, 
	"REGION_NAME" Varchar2(25 Byte)
   ) Segment Creation Immediate 
  Pctfree 10 Pctused 40 Initrans 1 Maxtrans 255 Nocompress Logging
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
REM INSERTING into REGIONS
Set Define Off;
Insert Into Regions (Region_Id,Region_Name) Values ('1','Europe');
Insert Into Regions (Region_Id,Region_Name) Values ('2','Americas');
Insert Into Regions (Region_Id,Region_Name) Values ('3','Asia');
Insert Into Regions (Region_Id,Region_Name) Values ('4','Middle East and Africa');
--------------------------------------------------------
--  DDL for Index REG_ID_PK
--------------------------------------------------------

  Create Unique Index "REG_ID_PK" On "REGIONS" ("REGION_ID") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  Constraints for Table REGIONS
--------------------------------------------------------

  Alter Table "REGIONS" Add Constraint "REG_ID_PK" Primary Key ("REGION_ID")
  Using Index Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS"  Enable;
  Alter Table "REGIONS" Modify ("REGION_ID" Constraint "REGION_ID_NN" Not Null Enable);
  
  
--------------------------------------------------------
--  File created - vasárnap-március-09-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table COUNTRIES
--------------------------------------------------------

  Create Table "COUNTRIES" 
   (	"COUNTRY_ID" Char(2 Byte), 
	"COUNTRY_NAME" Varchar2(40 Byte), 
	"REGION_ID" Number, 
	 Constraint "COUNTRY_C_ID_PK" Primary Key ("COUNTRY_ID") Enable
   ) Organization Index Nocompress Pctfree 10 Initrans 2 Maxtrans 255 Logging
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" 
 Pctthreshold 50;

   Comment On Column "COUNTRIES"."COUNTRY_ID" Is 'Primary key of countries table.';
   Comment On Column "COUNTRIES"."COUNTRY_NAME" Is 'Country name';
   Comment On Column "COUNTRIES"."REGION_ID" Is 'Region ID for the country. Foreign key to region_id column in the departments table.';
   Comment On Table "COUNTRIES"  Is 'country table. Contains 25 rows. References with locations table.';
REM INSERTING into COUNTRIES
Set Define Off;
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('AR','Argentina','2');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('AU','Australia','3');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('BE','Belgium','1');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('BR','Brazil','2');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('CA','Canada','2');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('CH','Switzerland','1');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('CN','China','3');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('DE','Germany','1');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('DK','Denmark','1');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('EG','Egypt','4');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('FR','France','1');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('IL','Israel','4');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('IN','India','3');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('IT','Italy','1');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('JP','Japan','3');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('KW','Kuwait','4');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('ML','Malaysia','3');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('MX','Mexico','2');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('NG','Nigeria','4');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('NL','Netherlands','1');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('SG','Singapore','3');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('UK','United Kingdom','1');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('US','United States of America','2');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('ZM','Zambia','4');
Insert Into Countries (Country_Id,Country_Name,Region_Id) Values ('ZW','Zimbabwe','4');
--------------------------------------------------------
--  DDL for Index COUNTRY_C_ID_PK
--------------------------------------------------------

  /*CREATE UNIQUE INDEX "COUNTRY_C_ID2_PK" ON "COUNTRIES" ("COUNTRY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;*/
--------------------------------------------------------
--  Constraints for Table COUNTRIES
--------------------------------------------------------

  /*ALTER TABLE "COUNTRIES" ADD CONSTRAINT "COUNTRY_C_ID2_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "COUNTRIES" MODIFY ("COUNTRY_ID" CONSTRAINT "COUNTRY_ID_NN" NOT NULL ENABLE);*/
--------------------------------------------------------
--  Ref Constraints for Table COUNTRIES
--------------------------------------------------------

  Alter Table "COUNTRIES" Add Constraint "COUNTR_REG_FK" Foreign Key ("REGION_ID")
	  References "REGIONS" ("REGION_ID") Enable;
    
    
--------------------------------------------------------
--  File created - vasárnap-március-09-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table LOCATIONS
--------------------------------------------------------

  Create Table "LOCATIONS" 
   (	"LOCATION_ID" Number(4,0), 
	"STREET_ADDRESS" Varchar2(40 Byte), 
	"POSTAL_CODE" Varchar2(12 Byte), 
	"CITY" Varchar2(30 Byte), 
	"STATE_PROVINCE" Varchar2(25 Byte), 
	"COUNTRY_ID" Char(2 Byte)
   ) Segment Creation Immediate 
  Pctfree 10 Pctused 40 Initrans 1 Maxtrans 255 Nocompress Logging
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;

   Comment On Column "LOCATIONS"."LOCATION_ID" Is 'Primary key of locations table';
   Comment On Column "LOCATIONS"."STREET_ADDRESS" Is 'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';
   Comment On Column "LOCATIONS"."POSTAL_CODE" Is 'Postal code of the location of an office, warehouse, or production site
of a company. ';
   Comment On Column "LOCATIONS"."CITY" Is 'A not null column that shows city where an office, warehouse, or
production site of a company is located. ';
   Comment On Column "LOCATIONS"."STATE_PROVINCE" Is 'State or Province where an office, warehouse, or production site of a
company is located.';
   Comment On Column "LOCATIONS"."COUNTRY_ID" Is 'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the countries table.';
   Comment On Table "LOCATIONS"  Is 'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. Contains 23 rows; references with the
departments and countries tables. ';
REM INSERTING into LOCATIONS
Set Define Off;
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('1000','1297 Via Cola di Rie','00989','Roma',Null,'IT');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('1100','93091 Calle della Testa','10934','Venice',Null,'IT');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('1200','2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('1300','9450 Kamiya-cho','6823','Hiroshima',Null,'JP');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('1400','2014 Jabberwocky Rd','26192','Southlake','Texas','US');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('1500','2011 Interiors Blvd','99236','South San Francisco','California','US');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('1600','2007 Zagora St','50090','South Brunswick','New Jersey','US');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('1700','2004 Charade Rd','98199','Seattle','Washington','US');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('1800','147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('1900','6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('2000','40-5-12 Laogianggen','190518','Beijing',Null,'CN');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('2100','1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('2200','12-98 Victoria Street','2901','Sydney','New South Wales','AU');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('2300','198 Clementi North','540198','Singapore',Null,'SG');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('2400','8204 Arthur St',Null,'London',Null,'UK');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('2500','Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('2600','9702 Chester Road','09629850293','Stretford','Manchester','UK');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('2700','Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('2800','Rua Frei Caneca 1360 ','01307-002','Sao Paulo','Sao Paulo','BR');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('2900','20 Rue des Corps-Saints','1730','Geneva','Geneve','CH');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('3000','Murtenstrasse 921','3095','Bern','BE','CH');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('3100','Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL');
Insert Into Locations (Location_Id,Street_Address,Postal_Code,City,State_Province,Country_Id) Values ('3200','Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');
--------------------------------------------------------
--  DDL for Index LOC_ID_PK
--------------------------------------------------------

  Create Unique Index "LOC_ID_PK" On "LOCATIONS" ("LOCATION_ID") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  DDL for Index LOC_CITY_IX
--------------------------------------------------------

  Create Index "LOC_CITY_IX" On "LOCATIONS" ("CITY") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  DDL for Index LOC_STATE_PROVINCE_IX
--------------------------------------------------------

  Create Index "LOC_STATE_PROVINCE_IX" On "LOCATIONS" ("STATE_PROVINCE") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  DDL for Index LOC_COUNTRY_IX
--------------------------------------------------------

  Create Index "LOC_COUNTRY_IX" On "LOCATIONS" ("COUNTRY_ID") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  Constraints for Table LOCATIONS
--------------------------------------------------------

  Alter Table "LOCATIONS" Add Constraint "LOC_ID_PK" Primary Key ("LOCATION_ID")
  Using Index Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS"  Enable;
  Alter Table "LOCATIONS" Modify ("CITY" Constraint "LOC_CITY_NN" Not Null Enable);
--------------------------------------------------------
--  Ref Constraints for Table LOCATIONS
--------------------------------------------------------

  Alter Table "LOCATIONS" Add Constraint "LOC_C_ID_FK" Foreign Key ("COUNTRY_ID")
	  References "COUNTRIES" ("COUNTRY_ID") Enable;
    
    
--------------------------------------------------------
--  File created - szombat-március-08-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  Create Table "DEPARTMENTS" 
   (	"DEPARTMENT_ID" Number(4,0), 
	"DEPARTMENT_NAME" Varchar2(30 Byte), 
	"MANAGER_ID" Number(6,0), 
	"LOCATION_ID" Number(4,0)
   ) Segment Creation Immediate 
  Pctfree 10 Pctused 40 Initrans 1 Maxtrans 255 Nocompress Logging
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;

   Comment On Column "DEPARTMENTS"."DEPARTMENT_ID" Is 'Primary key column of departments table.';
   Comment On Column "DEPARTMENTS"."DEPARTMENT_NAME" Is 'A not null column that shows name of a department. Administration,
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public
Relations, Sales, Finance, and Accounting. ';
   Comment On Column "DEPARTMENTS"."MANAGER_ID" Is 'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.';
   Comment On Column "DEPARTMENTS"."LOCATION_ID" Is 'Location id where a department is located. Foreign key to location_id column of locations table.';
   Comment On Table "DEPARTMENTS"  Is 'Departments table that shows details of departments where employees
work. Contains 27 rows; references with locations, employees, and job_history tables.';
REM INSERTING into DEPARTMENTS
Set Define Off;
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('10','Administration','200','1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('20','Marketing','201','1800');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('30','Purchasing','114','1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('40','Human Resources','203','2400');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('50','Shipping','121','1500');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('60','IT','103','1400');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('70','Public Relations','204','2700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('80','Sales','145','2500');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('90','Executive','100','1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('100','Finance','108','1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('110','Accounting','205','1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('120','Treasury',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('130','Corporate Tax',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('140','Control And Credit',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('150','Shareholder Services',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('160','Benefits',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('170','Manufacturing',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('180','Construction',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('190','Contracting',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('200','Operations',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('210','IT Support',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('220','NOC',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('230','IT Helpdesk',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('240','Government Sales',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('250','Retail Sales',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('260','Recruiting',Null,'1700');
Insert Into Departments (Department_Id,Department_Name,Manager_Id,Location_Id) Values ('270','Payroll',Null,'1700');
--------------------------------------------------------
--  DDL for Index DEPT_ID_PK
--------------------------------------------------------

  Create Unique Index "DEPT_ID_PK" On "DEPARTMENTS" ("DEPARTMENT_ID") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  DDL for Index DEPT_LOCATION_IX
--------------------------------------------------------

  Create Index "DEPT_LOCATION_IX" On "DEPARTMENTS" ("LOCATION_ID") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  Constraints for Table DEPARTMENTS
--------------------------------------------------------

  Alter Table "DEPARTMENTS" Add Constraint "DEPT_ID_PK" Primary Key ("DEPARTMENT_ID")
  Using Index Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS"  Enable;
  Alter Table "DEPARTMENTS" Modify ("DEPARTMENT_NAME" Constraint "DEPT_NAME_NN" Not Null Enable);
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENTS
--------------------------------------------------------

  Alter Table "DEPARTMENTS" Add Constraint "DEPT_LOC_FK" Foreign Key ("LOCATION_ID")
	  References "LOCATIONS" ("LOCATION_ID") Enable;


--------------------------------------------------------
--  File created - vasárnap-március-09-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table JOBS
--------------------------------------------------------

  Create Table "JOBS" 
   (	"JOB_ID" Varchar2(10 Byte), 
	"JOB_TITLE" Varchar2(35 Byte), 
	"MIN_SALARY" Number(6,0), 
	"MAX_SALARY" Number(6,0)
   ) Segment Creation Immediate 
  Pctfree 10 Pctused 40 Initrans 1 Maxtrans 255 Nocompress Logging
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;

   Comment On Column "JOBS"."JOB_ID" Is 'Primary key of jobs table.';
   Comment On Column "JOBS"."JOB_TITLE" Is 'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';
   Comment On Column "JOBS"."MIN_SALARY" Is 'Minimum salary for a job title.';
   Comment On Column "JOBS"."MAX_SALARY" Is 'Maximum salary for a job title';
   Comment On Table "JOBS"  Is 'jobs table with job titles and salary ranges. Contains 19 rows.
References with employees and job_history table.';
REM INSERTING into JOBS
Set Define Off;
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('AD_PRES','President','20080','40000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('AD_VP','Administration Vice President','15000','30000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('AD_ASST','Administration Assistant','3000','6000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('FI_MGR','Finance Manager','8200','16000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('FI_ACCOUNT','Accountant','4200','9000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('AC_MGR','Accounting Manager','8200','16000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('AC_ACCOUNT','Public Accountant','4200','9000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('SA_MAN','Sales Manager','10000','20080');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('SA_REP','Sales Representative','6000','12008');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('PU_MAN','Purchasing Manager','8000','15000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('PU_CLERK','Purchasing Clerk','2500','5500');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('ST_MAN','Stock Manager','5500','8500');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('ST_CLERK','Stock Clerk','2008','5000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('SH_CLERK','Shipping Clerk','2500','5500');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('IT_PROG','Programmer','4000','10000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('MK_MAN','Marketing Manager','9000','15000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('MK_REP','Marketing Representative','4000','9000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('HR_REP','Human Resources Representative','4000','9000');
Insert Into Jobs (Job_Id,Job_Title,Min_Salary,Max_Salary) Values ('PR_REP','Public Relations Representative','4500','10500');
--------------------------------------------------------
--  DDL for Index JOB_ID_PK
--------------------------------------------------------

  Create Unique Index "JOB_ID_PK" On "JOBS" ("JOB_ID") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  Constraints for Table JOBS
--------------------------------------------------------

  Alter Table "JOBS" Add Constraint "JOB_ID_PK" Primary Key ("JOB_ID")
  Using Index Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS"  Enable;
  Alter Table "JOBS" Modify ("JOB_TITLE" Constraint "JOB_TITLE_NN" Not Null Enable);


--------------------------------------------------------
--  File created - vasárnap-március-09-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  Create Table "EMPLOYEES" 
   (	"EMPLOYEE_ID" Number(6,0), 
	"FIRST_NAME" Varchar2(20 Byte), 
	"LAST_NAME" Varchar2(25 Byte), 
	"EMAIL" Varchar2(25 Byte), 
	"PHONE_NUMBER" Varchar2(20 Byte), 
	"HIRE_DATE" Date, 
	"JOB_ID" Varchar2(10 Byte), 
	"SALARY" Number(8,2), 
	"COMMISSION_PCT" Number(2,2), 
	"MANAGER_ID" Number(6,0), 
	"DEPARTMENT_ID" Number(4,0)
   ) Segment Creation Immediate 
  Pctfree 10 Pctused 40 Initrans 1 Maxtrans 255 Nocompress Logging
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;

   Comment On Column "EMPLOYEES"."EMPLOYEE_ID" Is 'Primary key of employees table.';
   Comment On Column "EMPLOYEES"."FIRST_NAME" Is 'First name of the employee. A not null column.';
   Comment On Column "EMPLOYEES"."LAST_NAME" Is 'Last name of the employee. A not null column.';
   Comment On Column "EMPLOYEES"."EMAIL" Is 'Email id of the employee';
   Comment On Column "EMPLOYEES"."PHONE_NUMBER" Is 'Phone number of the employee; includes country code and area code';
   Comment On Column "EMPLOYEES"."HIRE_DATE" Is 'Date when the employee started on this job. A not null column.';
   Comment On Column "EMPLOYEES"."JOB_ID" Is 'Current job of the employee; foreign key to job_id column of the
jobs table. A not null column.';
   Comment On Column "EMPLOYEES"."SALARY" Is 'Monthly salary of the employee. Must be greater
than zero (enforced by constraint emp_salary_min)';
   Comment On Column "EMPLOYEES"."COMMISSION_PCT" Is 'Commission percentage of the employee; Only employees in sales
department elgible for commission percentage';
   Comment On Column "EMPLOYEES"."MANAGER_ID" Is 'Manager id of the employee; has same domain as manager_id in
departments table. Foreign key to employee_id column of employees table.
(useful for reflexive joins and CONNECT BY query)';
   Comment On Column "EMPLOYEES"."DEPARTMENT_ID" Is 'Department id where employee works; foreign key to department_id
column of the departments table';
   Comment On Table "EMPLOYEES"  Is 'employees table. Contains 107 rows. References with departments,
jobs, job_history tables. Contains a self reference.';
REM INSERTING into EMPLOYEES
Set Define Off;
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('100','Steven','King','SKING','515.123.4567',To_Date('03-JÚN.  -17','RR-MON-DD'),'AD_PRES','24000',Null,Null,'90');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('101','Neena','Kochhar','NKOCHHAR','515.123.4568',To_Date('05-SZEPT.-21','RR-MON-DD'),'AD_VP','17000',Null,'100','90');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('102','Lex','De Haan','LDEHAAN','515.123.4569',To_Date('01-JAN.  -13','RR-MON-DD'),'AD_VP','17000',Null,'100','90');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('103','Alexander','Hunold','AHUNOLD','590.423.4567',To_Date('06-JAN.  -03','RR-MON-DD'),'IT_PROG','9000',Null,'102','60');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('104','Bruce','Ernst','BERNST','590.423.4568',To_Date('07-MÁJ.  -21','RR-MON-DD'),'IT_PROG','6000',Null,'103','60');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('105','David','Austin','DAUSTIN','590.423.4569',To_Date('05-JÚN.  -25','RR-MON-DD'),'IT_PROG','4800',Null,'103','60');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('106','Valli','Pataballa','VPATABAL','590.423.4560',To_Date('06-FEBR. -05','RR-MON-DD'),'IT_PROG','4800',Null,'103','60');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('107','Diana','Lorentz','DLORENTZ','590.423.5567',To_Date('07-FEBR. -07','RR-MON-DD'),'IT_PROG','4200',Null,'103','60');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('108','Nancy','Greenberg','NGREENBE','515.124.4569',To_Date('02-AUG.  -17','RR-MON-DD'),'FI_MGR','12008',Null,'101','100');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('109','Daniel','Faviet','DFAVIET','515.124.4169',To_Date('02-AUG.  -16','RR-MON-DD'),'FI_ACCOUNT','9000',Null,'108','100');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('110','John','Chen','JCHEN','515.124.4269',To_Date('05-SZEPT.-28','RR-MON-DD'),'FI_ACCOUNT','8200',Null,'108','100');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('111','Ismael','Sciarra','ISCIARRA','515.124.4369',To_Date('05-SZEPT.-30','RR-MON-DD'),'FI_ACCOUNT','7700',Null,'108','100');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('112','Jose Manuel','Urman','JMURMAN','515.124.4469',To_Date('06-MÁRC. -07','RR-MON-DD'),'FI_ACCOUNT','7800',Null,'108','100');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('113','Luis','Popp','LPOPP','515.124.4567',To_Date('07-DEC.  -07','RR-MON-DD'),'FI_ACCOUNT','6900',Null,'108','100');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('114','Den','Raphaely','DRAPHEAL','515.127.4561',To_Date('02-DEC.  -07','RR-MON-DD'),'PU_MAN','11000',Null,'100','30');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('115','Alexander','Khoo','AKHOO','515.127.4562',To_Date('03-MÁJ.  -18','RR-MON-DD'),'PU_CLERK','3100',Null,'114','30');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('116','Shelli','Baida','SBAIDA','515.127.4563',To_Date('05-DEC.  -24','RR-MON-DD'),'PU_CLERK','2900',Null,'114','30');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('117','Sigal','Tobias','STOBIAS','515.127.4564',To_Date('05-JÚL.  -24','RR-MON-DD'),'PU_CLERK','2800',Null,'114','30');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('118','Guy','Himuro','GHIMURO','515.127.4565',To_Date('06-NOV.  -15','RR-MON-DD'),'PU_CLERK','2600',Null,'114','30');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('119','Karen','Colmenares','KCOLMENA','515.127.4566',To_Date('07-AUG.  -10','RR-MON-DD'),'PU_CLERK','2500',Null,'114','30');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('120','Matthew','Weiss','MWEISS','650.123.1234',To_Date('04-JÚL.  -18','RR-MON-DD'),'ST_MAN','8000',Null,'100','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('121','Adam','Fripp','AFRIPP','650.123.2234',To_Date('05-ÁPR.  -10','RR-MON-DD'),'ST_MAN','8200',Null,'100','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('122','Payam','Kaufling','PKAUFLIN','650.123.3234',To_Date('03-MÁJ.  -01','RR-MON-DD'),'ST_MAN','7900',Null,'100','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('123','Shanta','Vollman','SVOLLMAN','650.123.4234',To_Date('05-OKT.  -10','RR-MON-DD'),'ST_MAN','6500',Null,'100','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('124','Kevin','Mourgos','KMOURGOS','650.123.5234',To_Date('07-NOV.  -16','RR-MON-DD'),'ST_MAN','5800',Null,'100','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('125','Julia','Nayer','JNAYER','650.124.1214',To_Date('05-JÚL.  -16','RR-MON-DD'),'ST_CLERK','3200',Null,'120','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('126','Irene','Mikkilineni','IMIKKILI','650.124.1224',To_Date('06-SZEPT.-28','RR-MON-DD'),'ST_CLERK','2700',Null,'120','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('127','James','Landry','JLANDRY','650.124.1334',To_Date('07-JAN.  -14','RR-MON-DD'),'ST_CLERK','2400',Null,'120','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('128','Steven','Markle','SMARKLE','650.124.1434',To_Date('08-MÁRC. -08','RR-MON-DD'),'ST_CLERK','2200',Null,'120','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('129','Laura','Bissot','LBISSOT','650.124.5234',To_Date('05-AUG.  -20','RR-MON-DD'),'ST_CLERK','3300',Null,'121','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('130','Mozhe','Atkinson','MATKINSO','650.124.6234',To_Date('05-OKT.  -30','RR-MON-DD'),'ST_CLERK','2800',Null,'121','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('131','James','Marlow','JAMRLOW','650.124.7234',To_Date('05-FEBR. -16','RR-MON-DD'),'ST_CLERK','2500',Null,'121','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('132','TJ','Olson','TJOLSON','650.124.8234',To_Date('07-ÁPR.  -10','RR-MON-DD'),'ST_CLERK','2100',Null,'121','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('133','Jason','Mallin','JMALLIN','650.127.1934',To_Date('04-JÚN.  -14','RR-MON-DD'),'ST_CLERK','3300',Null,'122','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('134','Michael','Rogers','MROGERS','650.127.1834',To_Date('06-AUG.  -26','RR-MON-DD'),'ST_CLERK','2900',Null,'122','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('135','Ki','Gee','KGEE','650.127.1734',To_Date('07-DEC.  -12','RR-MON-DD'),'ST_CLERK','2400',Null,'122','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('136','Hazel','Philtanker','HPHILTAN','650.127.1634',To_Date('08-FEBR. -06','RR-MON-DD'),'ST_CLERK','2200',Null,'122','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('137','Renske','Ladwig','RLADWIG','650.121.1234',To_Date('03-JÚL.  -14','RR-MON-DD'),'ST_CLERK','3600',Null,'123','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('138','Stephen','Stiles','SSTILES','650.121.2034',To_Date('05-OKT.  -26','RR-MON-DD'),'ST_CLERK','3200',Null,'123','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('139','John','Seo','JSEO','650.121.2019',To_Date('06-FEBR. -12','RR-MON-DD'),'ST_CLERK','2700',Null,'123','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('140','Joshua','Patel','JPATEL','650.121.1834',To_Date('06-ÁPR.  -06','RR-MON-DD'),'ST_CLERK','2500',Null,'123','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('141','Trenna','Rajs','TRAJS','650.121.8009',To_Date('03-OKT.  -17','RR-MON-DD'),'ST_CLERK','3500',Null,'124','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('142','Curtis','Davies','CDAVIES','650.121.2994',To_Date('05-JAN.  -29','RR-MON-DD'),'ST_CLERK','3100',Null,'124','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('143','Randall','Matos','RMATOS','650.121.2874',To_Date('06-MÁRC. -15','RR-MON-DD'),'ST_CLERK','2600',Null,'124','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('144','Peter','Vargas','PVARGAS','650.121.2004',To_Date('06-JÚL.  -09','RR-MON-DD'),'ST_CLERK','2500',Null,'124','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('145','John','Russell','JRUSSEL','011.44.1344.429268',To_Date('04-OKT.  -01','RR-MON-DD'),'SA_MAN','14000','0,4','100','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('146','Karen','Partners','KPARTNER','011.44.1344.467268',To_Date('05-JAN.  -05','RR-MON-DD'),'SA_MAN','13500','0,3','100','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('147','Alberto','Errazuriz','AERRAZUR','011.44.1344.429278',To_Date('05-MÁRC. -10','RR-MON-DD'),'SA_MAN','12000','0,3','100','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('148','Gerald','Cambrault','GCAMBRAU','011.44.1344.619268',To_Date('07-OKT.  -15','RR-MON-DD'),'SA_MAN','11000','0,3','100','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('149','Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018',To_Date('08-JAN.  -29','RR-MON-DD'),'SA_MAN','10500','0,2','100','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('150','Peter','Tucker','PTUCKER','011.44.1344.129268',To_Date('05-JAN.  -30','RR-MON-DD'),'SA_REP','10000','0,3','145','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('151','David','Bernstein','DBERNSTE','011.44.1344.345268',To_Date('05-MÁRC. -24','RR-MON-DD'),'SA_REP','9500','0,25','145','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('152','Peter','Hall','PHALL','011.44.1344.478968',To_Date('05-AUG.  -20','RR-MON-DD'),'SA_REP','9000','0,25','145','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('153','Christopher','Olsen','COLSEN','011.44.1344.498718',To_Date('06-MÁRC. -30','RR-MON-DD'),'SA_REP','8000','0,2','145','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('154','Nanette','Cambrault','NCAMBRAU','011.44.1344.987668',To_Date('06-DEC.  -09','RR-MON-DD'),'SA_REP','7500','0,2','145','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('155','Oliver','Tuvault','OTUVAULT','011.44.1344.486508',To_Date('07-NOV.  -23','RR-MON-DD'),'SA_REP','7000','0,15','145','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('156','Janette','King','JKING','011.44.1345.429268',To_Date('04-JAN.  -30','RR-MON-DD'),'SA_REP','10000','0,35','146','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('157','Patrick','Sully','PSULLY','011.44.1345.929268',To_Date('04-MÁRC. -04','RR-MON-DD'),'SA_REP','9500','0,35','146','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('158','Allan','McEwen','AMCEWEN','011.44.1345.829268',To_Date('04-AUG.  -01','RR-MON-DD'),'SA_REP','9000','0,35','146','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('159','Lindsey','Smith','LSMITH','011.44.1345.729268',To_Date('05-MÁRC. -10','RR-MON-DD'),'SA_REP','8000','0,3','146','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('160','Louise','Doran','LDORAN','011.44.1345.629268',To_Date('05-DEC.  -15','RR-MON-DD'),'SA_REP','7500','0,3','146','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('161','Sarath','Sewall','SSEWALL','011.44.1345.529268',To_Date('06-NOV.  -03','RR-MON-DD'),'SA_REP','7000','0,25','146','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('162','Clara','Vishney','CVISHNEY','011.44.1346.129268',To_Date('05-NOV.  -11','RR-MON-DD'),'SA_REP','10500','0,25','147','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('163','Danielle','Greene','DGREENE','011.44.1346.229268',To_Date('07-MÁRC. -19','RR-MON-DD'),'SA_REP','9500','0,15','147','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('164','Mattea','Marvins','MMARVINS','011.44.1346.329268',To_Date('08-JAN.  -24','RR-MON-DD'),'SA_REP','7200','0,1','147','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('165','David','Lee','DLEE','011.44.1346.529268',To_Date('08-FEBR. -23','RR-MON-DD'),'SA_REP','6800','0,1','147','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('166','Sundar','Ande','SANDE','011.44.1346.629268',To_Date('08-MÁRC. -24','RR-MON-DD'),'SA_REP','6400','0,1','147','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('167','Amit','Banda','ABANDA','011.44.1346.729268',To_Date('08-ÁPR.  -21','RR-MON-DD'),'SA_REP','6200','0,1','147','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('168','Lisa','Ozer','LOZER','011.44.1343.929268',To_Date('05-MÁRC. -11','RR-MON-DD'),'SA_REP','11500','0,25','148','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('169','Harrison','Bloom','HBLOOM','011.44.1343.829268',To_Date('06-MÁRC. -23','RR-MON-DD'),'SA_REP','10000','0,2','148','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('170','Tayler','Fox','TFOX','011.44.1343.729268',To_Date('06-JAN.  -24','RR-MON-DD'),'SA_REP','9600','0,2','148','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('171','William','Smith','WSMITH','011.44.1343.629268',To_Date('07-FEBR. -23','RR-MON-DD'),'SA_REP','7400','0,15','148','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('172','Elizabeth','Bates','EBATES','011.44.1343.529268',To_Date('07-MÁRC. -24','RR-MON-DD'),'SA_REP','7300','0,15','148','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('173','Sundita','Kumar','SKUMAR','011.44.1343.329268',To_Date('08-ÁPR.  -21','RR-MON-DD'),'SA_REP','6100','0,1','148','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('174','Ellen','Abel','EABEL','011.44.1644.429267',To_Date('04-MÁJ.  -11','RR-MON-DD'),'SA_REP','11000','0,3','149','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('175','Alyssa','Hutton','AHUTTON','011.44.1644.429266',To_Date('05-MÁRC. -19','RR-MON-DD'),'SA_REP','8800','0,25','149','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('176','Jonathon','Taylor','JTAYLOR','011.44.1644.429265',To_Date('06-MÁRC. -24','RR-MON-DD'),'SA_REP','8600','0,2','149','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('177','Jack','Livingston','JLIVINGS','011.44.1644.429264',To_Date('06-ÁPR.  -23','RR-MON-DD'),'SA_REP','8400','0,2','149','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('178','Kimberely','Grant','KGRANT','011.44.1644.429263',To_Date('07-MÁJ.  -24','RR-MON-DD'),'SA_REP','7000','0,15','149',Null);
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('179','Charles','Johnson','CJOHNSON','011.44.1644.429262',To_Date('08-JAN.  -04','RR-MON-DD'),'SA_REP','6200','0,1','149','80');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('180','Winston','Taylor','WTAYLOR','650.507.9876',To_Date('06-JAN.  -24','RR-MON-DD'),'SH_CLERK','3200',Null,'120','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('181','Jean','Fleaur','JFLEAUR','650.507.9877',To_Date('06-FEBR. -23','RR-MON-DD'),'SH_CLERK','3100',Null,'120','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('182','Martha','Sullivan','MSULLIVA','650.507.9878',To_Date('07-JÚN.  -21','RR-MON-DD'),'SH_CLERK','2500',Null,'120','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('183','Girard','Geoni','GGEONI','650.507.9879',To_Date('08-FEBR. -03','RR-MON-DD'),'SH_CLERK','2800',Null,'120','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('184','Nandita','Sarchand','NSARCHAN','650.509.1876',To_Date('04-JAN.  -27','RR-MON-DD'),'SH_CLERK','4200',Null,'121','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('185','Alexis','Bull','ABULL','650.509.2876',To_Date('05-FEBR. -20','RR-MON-DD'),'SH_CLERK','4100',Null,'121','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('186','Julia','Dellinger','JDELLING','650.509.3876',To_Date('06-JÚN.  -24','RR-MON-DD'),'SH_CLERK','3400',Null,'121','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('187','Anthony','Cabrio','ACABRIO','650.509.4876',To_Date('07-FEBR. -07','RR-MON-DD'),'SH_CLERK','3000',Null,'121','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('188','Kelly','Chung','KCHUNG','650.505.1876',To_Date('05-JÚN.  -14','RR-MON-DD'),'SH_CLERK','3800',Null,'122','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('189','Jennifer','Dilly','JDILLY','650.505.2876',To_Date('05-AUG.  -13','RR-MON-DD'),'SH_CLERK','3600',Null,'122','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('190','Timothy','Gates','TGATES','650.505.3876',To_Date('06-JÚL.  -11','RR-MON-DD'),'SH_CLERK','2900',Null,'122','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('191','Randall','Perkins','RPERKINS','650.505.4876',To_Date('07-DEC.  -19','RR-MON-DD'),'SH_CLERK','2500',Null,'122','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('192','Sarah','Bell','SBELL','650.501.1876',To_Date('04-FEBR. -04','RR-MON-DD'),'SH_CLERK','4000',Null,'123','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('193','Britney','Everett','BEVERETT','650.501.2876',To_Date('05-MÁRC. -03','RR-MON-DD'),'SH_CLERK','3900',Null,'123','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('194','Samuel','McCain','SMCCAIN','650.501.3876',To_Date('06-JÚL.  -01','RR-MON-DD'),'SH_CLERK','3200',Null,'123','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('195','Vance','Jones','VJONES','650.501.4876',To_Date('07-MÁRC. -17','RR-MON-DD'),'SH_CLERK','2800',Null,'123','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('196','Alana','Walsh','AWALSH','650.507.9811',To_Date('06-ÁPR.  -24','RR-MON-DD'),'SH_CLERK','3100',Null,'124','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('197','Kevin','Feeney','KFEENEY','650.507.9822',To_Date('06-MÁJ.  -23','RR-MON-DD'),'SH_CLERK','3000',Null,'124','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('198','Donald','OConnell','DOCONNEL','650.507.9833',To_Date('07-JÚN.  -21','RR-MON-DD'),'SH_CLERK','2600',Null,'124','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('199','Douglas','Grant','DGRANT','650.507.9844',To_Date('08-JAN.  -13','RR-MON-DD'),'SH_CLERK','2600',Null,'124','50');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('200','Jennifer','Whalen','JWHALEN','515.123.4444',To_Date('03-SZEPT.-17','RR-MON-DD'),'AD_ASST','4400',Null,'101','10');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('201','Michael','Hartstein','MHARTSTE','515.123.5555',To_Date('04-FEBR. -17','RR-MON-DD'),'MK_MAN','13000',Null,'100','20');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('202','Pat','Fay','PFAY','603.123.6666',To_Date('05-AUG.  -17','RR-MON-DD'),'MK_REP','6000',Null,'201','20');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('203','Susan','Mavris','SMAVRIS','515.123.7777',To_Date('02-JÚN.  -07','RR-MON-DD'),'HR_REP','6500',Null,'101','40');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('204','Hermann','Baer','HBAER','515.123.8888',To_Date('02-JÚN.  -07','RR-MON-DD'),'PR_REP','10000',Null,'101','70');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('205','Shelley','Higgins','SHIGGINS','515.123.8080',To_Date('02-JÚN.  -07','RR-MON-DD'),'AC_MGR','12008',Null,'101','110');
Insert Into Employees (Employee_Id,First_Name,Last_Name,Email,Phone_Number,Hire_Date,Job_Id,Salary,Commission_Pct,Manager_Id,Department_Id) Values ('206','William','Gietz','WGIETZ','515.123.8181',To_Date('02-JÚN.  -07','RR-MON-DD'),'AC_ACCOUNT','8300',Null,'205','110');
--------------------------------------------------------
--  DDL for Index EMP_EMAIL_UK
--------------------------------------------------------

  Create Unique Index "EMP_EMAIL_UK" On "EMPLOYEES" ("EMAIL") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_EMP_ID_PK
--------------------------------------------------------

  Create Unique Index "EMP_EMP_ID_PK" On "EMPLOYEES" ("EMPLOYEE_ID") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_DEPARTMENT_IX
--------------------------------------------------------

  Create Index "EMP_DEPARTMENT_IX" On "EMPLOYEES" ("DEPARTMENT_ID") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_JOB_IX
--------------------------------------------------------

  Create Index "EMP_JOB_IX" On "EMPLOYEES" ("JOB_ID") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_MANAGER_IX
--------------------------------------------------------

  Create Index "EMP_MANAGER_IX" On "EMPLOYEES" ("MANAGER_ID") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_NAME_IX
--------------------------------------------------------

  Create Index "EMP_NAME_IX" On "EMPLOYEES" ("LAST_NAME", "FIRST_NAME") 
  Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  Alter Table "EMPLOYEES" Add Constraint "EMP_EMP_ID_PK" Primary Key ("EMPLOYEE_ID")
  Using Index Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS"  Enable;
  Alter Table "EMPLOYEES" Add Constraint "EMP_EMAIL_UK" Unique ("EMAIL")
  Using Index Pctfree 10 Initrans 2 Maxtrans 255 Compute Statistics 
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS"  Enable;
  Alter Table "EMPLOYEES" Add Constraint "EMP_SALARY_MIN" Check (Salary > 0) Enable;
  Alter Table "EMPLOYEES" Modify ("JOB_ID" Constraint "EMP_JOB_NN" Not Null Enable);
  Alter Table "EMPLOYEES" Modify ("HIRE_DATE" Constraint "EMP_HIRE_DATE_NN" Not Null Enable);
  Alter Table "EMPLOYEES" Modify ("EMAIL" Constraint "EMP_EMAIL_NN" Not Null Enable);
  Alter Table "EMPLOYEES" Modify ("LAST_NAME" Constraint "EMP_LAST_NAME_NN" Not Null Enable);
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES
--------------------------------------------------------

  Alter Table "EMPLOYEES" Add Constraint "EMP_DEPT_FK" Foreign Key ("DEPARTMENT_ID")
	  References "DEPARTMENTS" ("DEPARTMENT_ID") Enable;
  Alter Table "EMPLOYEES" Add Constraint "EMP_JOB_FK" Foreign Key ("JOB_ID")
	  References "JOBS" ("JOB_ID") Enable;
  Alter Table "EMPLOYEES" Add Constraint "EMP_MANAGER_FK" Foreign Key ("MANAGER_ID")
	  References "EMPLOYEES" ("EMPLOYEE_ID") Enable;


--------------------------------------------------------
--  File created - vasárnap-március-09-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table JOB_HISTORY
--------------------------------------------------------

  Create Table "JOB_HISTORY" 
   (	"EMPLOYEE_ID" Number(6,0), 
	"START_DATE" Date, 
	"END_DATE" Date, 
	"JOB_ID" Varchar2(10 Byte), 
	"DEPARTMENT_ID" Number(4,0)
   ) Segment Creation Immediate 
  Pctfree 10 Pctused 40 Initrans 1 Maxtrans 255 Nocompress Logging
  Storage(Initial 65536 Next 1048576 Minextents 1 Maxextents 2147483645
  Pctincrease 0 Freelists 1 Freelist Groups 1 Buffer_Pool Default Flash_Cache Default Cell_Flash_Cache Default)
  Tablespace "USERS" ;

   Comment On Column "JOB_HISTORY"."EMPLOYEE_ID" Is 'A not null column in the complex primary key employee_id+start_date.
Foreign key to employee_id column of the employee table';
   COMMENT ON COLUMN "JOB_HISTORY"."START_DATE" IS 'A not null column in the complex primary key employee_id+start_date.
Must be less than the end_date of the job_history table. (enforced by
constraint jhist_date_interval)';
   COMMENT ON COLUMN "JOB_HISTORY"."END_DATE" IS 'Last day of the employee in this job role. A not null column. Must be
greater than the start_date of the job_history table.
(enforced by constraint jhist_date_interval)';
   COMMENT ON COLUMN "JOB_HISTORY"."JOB_ID" IS 'Job role in which the employee worked in the past; foreign key to
job_id column in the jobs table. A not null column.';
   COMMENT ON COLUMN "JOB_HISTORY"."DEPARTMENT_ID" IS 'Department id in which the employee worked in the past; foreign key to deparment_id column in the departments table';
   COMMENT ON TABLE "JOB_HISTORY"  IS 'Table that stores job history of the employees. If an employee
changes departments within the job or changes jobs within the department,
new rows get inserted into this table with old job information of the
employee. Contains a complex primary key: employee_id+start_date.
Contains 25 rows. References with jobs, employees, and departments tables.';
REM INSERTING into JOB_HISTORY
SET DEFINE OFF;
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('102',to_date('01-JAN.  -13','RR-MON-DD'),to_date('06-JÚL.  -24','RR-MON-DD'),'IT_PROG','60');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('101',to_date('97-SZEPT.-21','RR-MON-DD'),to_date('01-OKT.  -27','RR-MON-DD'),'AC_ACCOUNT','110');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('101',to_date('01-OKT.  -28','RR-MON-DD'),to_date('05-MÁRC. -15','RR-MON-DD'),'AC_MGR','110');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('201',to_date('04-FEBR. -17','RR-MON-DD'),to_date('07-DEC.  -19','RR-MON-DD'),'MK_REP','20');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('114',to_date('06-MÁRC. -24','RR-MON-DD'),to_date('07-DEC.  -31','RR-MON-DD'),'ST_CLERK','50');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('122',to_date('07-JAN.  -01','RR-MON-DD'),to_date('07-DEC.  -31','RR-MON-DD'),'ST_CLERK','50');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('200',to_date('95-SZEPT.-17','RR-MON-DD'),to_date('01-JÚN.  -17','RR-MON-DD'),'AD_ASST','90');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('176',to_date('06-MÁRC. -24','RR-MON-DD'),to_date('06-DEC.  -31','RR-MON-DD'),'SA_REP','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('176',to_date('07-JAN.  -01','RR-MON-DD'),to_date('07-DEC.  -31','RR-MON-DD'),'SA_MAN','80');
Insert into JOB_HISTORY (EMPLOYEE_ID,START_DATE,END_DATE,JOB_ID,DEPARTMENT_ID) values ('200',to_date('02-JÚL.  -01','RR-MON-DD'),to_date('06-DEC.  -31','RR-MON-DD'),'AC_ACCOUNT','90');
--------------------------------------------------------
--  DDL for Index JHIST_EMP_ID_ST_DATE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JHIST_EMP_ID_ST_DATE_PK" ON "JOB_HISTORY" ("EMPLOYEE_ID", "START_DATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_JOB_IX
--------------------------------------------------------

  CREATE INDEX "JHIST_JOB_IX" ON "JOB_HISTORY" ("JOB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_EMPLOYEE_IX
--------------------------------------------------------

  CREATE INDEX "JHIST_EMPLOYEE_IX" ON "JOB_HISTORY" ("EMPLOYEE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JHIST_DEPARTMENT_IX
--------------------------------------------------------

  CREATE INDEX "JHIST_DEPARTMENT_IX" ON "JOB_HISTORY" ("DEPARTMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table JOB_HISTORY
--------------------------------------------------------

  ALTER TABLE "JOB_HISTORY" ADD CONSTRAINT "JHIST_EMP_ID_ST_DATE_PK" PRIMARY KEY ("EMPLOYEE_ID", "START_DATE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "JOB_HISTORY" ADD CONSTRAINT "JHIST_DATE_INTERVAL" CHECK (end_date > start_date) ENABLE;
  ALTER TABLE "JOB_HISTORY" MODIFY ("JOB_ID" CONSTRAINT "JHIST_JOB_NN" NOT NULL ENABLE);
  ALTER TABLE "JOB_HISTORY" MODIFY ("END_DATE" CONSTRAINT "JHIST_END_DATE_NN" NOT NULL ENABLE);
  ALTER TABLE "JOB_HISTORY" MODIFY ("START_DATE" CONSTRAINT "JHIST_START_DATE_NN" NOT NULL ENABLE);
  ALTER TABLE "JOB_HISTORY" MODIFY ("EMPLOYEE_ID" CONSTRAINT "JHIST_EMPLOYEE_NN" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table JOB_HISTORY
--------------------------------------------------------

  ALTER TABLE "JOB_HISTORY" ADD CONSTRAINT "JHIST_DEPT_FK" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;
  ALTER TABLE "JOB_HISTORY" ADD CONSTRAINT "JHIST_EMP_FK" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "JOB_HISTORY" ADD CONSTRAINT "JHIST_JOB_FK" FOREIGN KEY ("JOB_ID")
	  REFERENCES "JOBS" ("JOB_ID") ENABLE;
