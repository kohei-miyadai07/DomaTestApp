-- Project Name : DomaTestApp_ER図
-- Date/Time    : 2023/06/03 10:46:20
-- Author       : mk26s
-- RDBMS Type   : PostgreSQL
-- Application  : A5:SQL Mk-2

/*
  << 注意！！ >>
  BackupToTempTable, RestoreFromTempTable疑似命令が付加されています。
  これにより、drop table, create table 後もデータが残ります。
  この機能は一時的に $$TableName のような一時テーブルを作成します。
  この機能は A5:SQL Mk-2でのみ有効であることに注意してください。
*/

-- メンバー
--* RestoreFromTempTable
create table Member (
  member_id varchar(8) not null
  , name varchar(90)
  , detail text
  , insert_date timestamp not null
  , update_date timestamp not null
  , version integer not null
  , constraint Member_PKC primary key (member_id)
) ;

comment on table Member is 'メンバー';
comment on column Member.member_id is 'メンバーID';
comment on column Member.name is '名前';
comment on column Member.detail is '備考';
comment on column Member.insert_date is '登録日時';
comment on column Member.update_date is '更新日時';
comment on column Member.version is 'バージョン';

