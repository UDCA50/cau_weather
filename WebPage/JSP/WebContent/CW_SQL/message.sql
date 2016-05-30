create table message(
msg_num int(255) not null primary key auto_increment, 
msg_writer varchar(63) not null,  
msg_title varchar(255) not null,
msg_contents varchar(255) not null,
msg_sender int(4) not null,
msg_receiver int(4) not null,
msg_wrdate varchar(31) not null
);
