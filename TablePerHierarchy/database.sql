
create database if not exists heritagenhib_hierarchy character set utf8 collate utf8_unicode_ci;
use heritagenhib_hierarchy;

grant all privileges on heritagenhib_hierarchy.* to 'hnh_user'@'localhost' identified by 'secret';

drop table if exists t_character;

create table t_character (
    char_id integer not null primary key auto_increment,
    char_type varchar(20) not null,
    char_name varchar(100) not null,
    /* les colonnes spécifiques ne peuvent pas être NOT NULL */
    char_title varchar(100),
    char_xpvalue integer 
);

insert into t_character values (1, 'PLA', 'Aurora', 'Knight', null);
insert into t_character values (2, 'PLA', 'Glacius', 'King', null);

insert into t_character values (3, 'NPC', 'ZogZog', null, 250);
insert into t_character values (4, 'NPC', 'Onyxia', null, 4000);
