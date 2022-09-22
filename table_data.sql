create table tbluser(
    userid int not null primary key AUTO_INCREMENT,
    username varchar(100) not null unique,
    first_name varchar(100) not null,
    last_name varchar(100),
    bio varchar(500),
    email varchar(150) not null unique,
    phone_number varchar(10) not null unique,
    gender varchar(6),
    password varchar(70) not null,
    account_created date,
    date_of_birth date not null,
    flat_no varchar(50),
    building_name varchar(100) not null,
    pincode int not null,
    foreign key (pincode) references tblpincode(pincode),
    user_mode int not null default '0',
    youtube varchar(600),
    instagram varchar(600),
    linkedln varchar(600),
    twitter varchar(600),
    portfolio varchar(600),
    ranks int);

create table tblcountry(
    c_id int primary key AUTO_INCREMENT,
    c_name varchar(56) not null unique
);

-- Insert country values
insert into tblcountry(c_name) values('India');

create table tblstate(
    s_id int primary key AUTO_INCREMENT,
    c_id int not null,
    foreign key (c_id) references tblcountry(c_id),
    s_name varchar(100) not null
);

-- Insert state values
insert into tblstate(c_id,s_name) values(1,'Gujarat');

create table tbldistrict(
    d_id int primary key AUTO_INCREMENT,
    s_id int not null,
    foreign key (s_id) references tblstate(s_id),
    d_name varchar(100) not null
);

-- Insert District values
insert into tbldistrict(s_id,d_name) values(1,'Surat');

create table tblpincode(
    pincode int primary key,
    d_id int not null,
    foreign key (d_id) references tbldistrict(d_id),
    taluka_name varchar(100) not null
);

--insert into pincode
insert into tblpincode(pincode,d_id,taluka_name) values (359009,1,'choriyasi');


create table tblcompany(
    company_id int not null primary key,
)