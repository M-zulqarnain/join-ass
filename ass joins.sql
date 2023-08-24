create database joins;
use joins;
create table stu(
sid int(10),
sname varchar(30)
);

insert into stu (sid , sname)value(1,"mary"),(2,"jane"),(3,"daniel"),(4,"jack"),(5,"haroid");
select * from joins.stu;

create table cou(
cid int(10),
cname varchar(30),
sid int(10)
);

insert into cou (cid , cname, sid)value(11,"php",4),(12,"java" ,1),(13,"asp.net",1),(14,"ruby",2);


create table tea(
tid int(10),
tname varchar(30),
cid int(10)
);

insert into tea (tid , tname,cid)value(21,"jill",13),(22,"greul",12),(23,"jenkins",11),(24,"polo",14);

select * from stu as s join cou as c on s.sid =c.sid;
select * from stu as s left join cou as c on s.sid =c.sid;
select * from stu as s right join cou as c on s.sid =c.sid;
select * from stu as s inner join cou as c on s.sid =c.sid inner join tea as t on c.cid = t.cid;
select * from stu as s cross join cou as c on s.sid =c.sid;
select s.sname,c.cname,t.tname from stu as s join cou as c on s.sid =c.sid join tea as t on c.cid = t.cid where s.sname+c.cname +t.tname ="asp.net";
select * from stu as s join cou as c on s.sid =c.sid where c.cname = "asp.net"; 


select * from stu as s inner join cou as c on s.sid=c.sid inner join tea as t on c.cid=t.cid where t.tname='jill';