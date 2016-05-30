create table member(

m_num int(255) not null auto_increment primary key,
m_type int(4) not null,
m_id varchar(63) not null,
m_pass varchar(31) not null,
m_name varchar(31) not null,
m_nickname varchar(31) not null,
m_telephone varchar(63) not null,
m_email varchar(255) not null,
m_regdate varchar(31) not null
);
