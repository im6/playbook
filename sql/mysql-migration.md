# mysql migratino

```sh
mysqldump -u root --all-databases > /home/databases.sql
# compress and copy to new host
mysqldump -u root
source /home/databases.sql
```
