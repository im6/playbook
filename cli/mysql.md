CRUD
```sql
INSERT INTO colortype
	(name, author, status)
values
  ('Earthy', null, 0),
  ('Velvet', null, 0),
  ('Retro', null, 0),
  ('Iridescent', null, 0),
  ('Neutral', null, 0)


ALTER TABLE user ADD UNIQUE (email)

ALTER TABLE colortype AUTO_INCREMENT = 15;

ALTER TABLE table_name DROP PRIMARY KEY,ADD PRIMARY KEY (col_name1, col_name2);
```
