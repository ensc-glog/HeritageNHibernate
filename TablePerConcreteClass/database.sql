
create database if not exists heritagenhib_concclass character set utf8 collate utf8_unicode_ci;
use heritagenhib_concclass;

grant all privileges on heritagenhib_concclass.* to 'hnh_user'@'localhost' identified by 'secret';

drop table if exists t_player;
drop table if exists t_npc;

create table t_player (
    char_id integer not null primary key auto_increment,
    char_name varchar(100) not null,
    pla_title varchar(100) not null
);

create table t_npc (
    char_id integer not null primary key auto_increment,
    char_name varchar(100) not null,
    npc_xpvalue integer not null
);

/* Les clés primaires doivent être uniques dans les 2 tables */

insert into t_player values (1, 'Aurora', 'Knight');
insert into t_player values (2, 'Glacius', 'King');

insert into t_npc values (101, 'ZogZog', 250);
insert into t_npc values (102, 'Onyxia', 4000);
