create table weather(
w_num int(31) not null primary key auto_increment,
w_hum varchar(255) not null,
w_temp varchar(255) not null,
w_building int(255) not null,
w_classroom int(255) not null,
w_time timestamp
);
