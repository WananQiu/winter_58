--用户
create table normaluser(
	nuid int primary key auto_increment,
	email varchar(20),
	password varchar(20),
	nuname varchar(20),
	age int,
	sex char(1),
	nativeplace varchar(50),
	education varchar(5),
	schooltime varchar(40),
	schoolname varchar(20),
	specialities varchar(20)
)

--简历
create table resume(
	rid int primary key auto_increment,
	nuid int,
	address varchar(50),
	pay int,
	workaddr varchar(50),
	worktype varchar(40),
	introudce varchar(150),
	touch char(11),
	photo1 BLOB,
	photo2 BLOB,
	photo3 BLOB,
	point varchar(40),
	worktime int,
	worknum int
)


--曾任职公司/工作经验
create table workFor(
	wfid int primary key auto_increment,
	rid int,
	comname varchar(50),
	worktime varchar(40),
	pay varchar(40),
	job varchar(20),
	duty varchar(50)
)



--企业用户
create table companyuser(
	cuid int primary key auto_increment,
	email varchar(20),
	password varchar(20),
	nuname varchar(20),
	touch char(11),
	phonetouch char(7),
	QQ varchar(20),
	money float
)

--公司资料
create table company(
	cid int primary key auto_increment,
	cuid int,
	ctype char(2),
	comname varchar(50),
	othername varchar(50),
	comtype varchar(40),
	comstatus varchar(10),
	comhumen int,
	comintroudce varchar(150),
	welfare varchar(40),
	photo1 BLOB,
	photo2 BLOB,
	photo3 BLOB,
	touchname varchar(20),
	touch char(11),
	comweb varchar(50),
	email varchar(20),
	address varchar(50),
	moreaddr varchar(50)
)

--招聘人员资料
create table touchstaff(
	tsid int primary key auto_increment,
	cuid int,
	tname varchar(20),
	sex char(1),
	age int,
	address varchar(50),
	workaddr varchar(50),
	nativeplace varchar(50),
	introduce varchar(20)
)

--职位
create table job(
	jid int primary key auto_increment,
	cuid int,
	jname varchar(20),
	jtype varchar(40),
	junm int,
	education varchar(5),
	worktime int,
	pay varchar(40),
	req varchar(150),
	welfare varchar(50),
	address varchar(50),
	jobstatus varchar(5),
	updatetime TIMESTAMP,
	publishtime TIMESTAMP
)

--认证表
create table authentication(
	auid int primary key auto_increment,
	cuid int,
	touchau char(11),
	email varchar(20),
	name varchar(20),
	namephoto BLOB,
	namestatus varchar(10),
	aunum char(13),
	comname varchar(50),
	comstatus varchar(10),
	titletype varchar(10),
	tittlename varchar(20),
	titlenum char(13),
	titlephoto BLOB,
	titlestatus varchar(10)
)

commit;






