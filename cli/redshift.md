
get table meta info:
```sql
select nspname, relname, max(attnum) as num_cols
  from pg_attribute a, pg_namespace n, pg_class c
  where n.oid = c.relnamespace 
    and a.attrelid = c.oid
    and c.relname not like '%pkey'
    and n.nspname not like 'pg%'
    and n.nspname not like 'information%'
  group by 1, 2
order by 1, 2;
```
get storage status:
```sql
select
  sum(capacity)/1024 as capacity_gbytes,
  sum(used)/1024 as used_gbytes,
  (sum(capacity) - sum(used))/1024 as free_gbytes
from
  stv_partitions where part_begin=0;
```

  
Grant permission:
```sql
GRANT ALL ON SCHEMA <schName> TO <Username>;
select * from stl_load_errors order by starttime desc limit 10
truncate <tableName>;
vacuum;
```sql

get all table meta info:
```sql
select
    trim(pgdb.datname) as Database,
    trim(pgn.nspname) as Schema,
    trim(a.name) as Table,
    b.mbytes,
    a.rows
from (
    select db_id, id, name, sum(rows) as rows
    from stv_tbl_perm a
    group by db_id, id, name
) as a
join pg_class as pgc on pgc.oid = a.id
join pg_namespace as pgn on pgn.oid = pgc.relnamespace
join pg_database as pgdb on pgdb.oid = a.db_id
join (
    select tbl, count(*) as mbytes
    from stv_blocklist
    group by tbl
) b on a.id = b.tbl
order by mbytes desc, a.db_id, a.name;
```

system setup:
```sql
set statement_timeout to 1200000
```

switch user role
```sql
alter user <username> createuser;
```

specify query group of WLM
```sql
set query_group to '<GROUP NAME>';
select * from users;
reset query_group;
```
