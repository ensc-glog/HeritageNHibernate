
create database if not exists heritagenhib_subclass character set utf8 collate utf8_unicode_ci;
use heritagenhib_subclass;

grant all privileges on heritagenhib_subclass.* to 'hnh_user'@'localhost' identified by 'secret';

drop table if exists t_player;
drop table if exists t_npc;
drop table if exists t_character;

create table t_character (
    char_id integer not null primary key auto_increment,
    char_name varchar(100) not null
);

create table t_player (
    char_id integer not null primary key auto_increment,
    pla_title varchar(100) not null,
    constraint foreign key(char_id) references t_character(char_id)
);

create table t_npc (
    char_id integer not null primary key auto_increment,
    npc_xpvalue integer not null,
    constraint foreign key(char_id) references t_character(char_id)
);

insert into t_character values (1, 'Aurora');
insert into t_character values (2, 'ZogZog');
insert into t_character values (3, 'Glacius');
insert into t_character values (4, 'Onyxia');

insert into t_player values (1, 'Knight');
insert into t_player values (3, 'King');

insert into t_npc values (2, 250);
insert into t_npc values (4, 4000);
