[ref](https://zhuanlan.zhihu.com/p/33332624)
```sql
select distinct(server) 
    from user_record 
    where type = 'GD0001'
```

## Step:
1. 通过type索引筛选出符合要求记录的主键字段的标识
2. 通过主键标识定位到表中记录的源数据
3. 拿到字段的值进行distinct去重得到最终的结果。



we really only care about the server and type, therefore, use covering index in the creationg query:
```sql
create index index_type_server 
    on user_record(type, server)
```
Tada!
