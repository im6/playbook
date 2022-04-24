# salary query

```sql
SELECT max(Salary) FROM employee
WHERE salary <
  (
    SELECT max(Salary) from employee
  )
```

```sql
SELECT TOP 1 * FROM
(
  SELECT TOP 5 * FROM employee
  ORDER BY Salary DESC
) Sal_order
ORDER BY Salary
```
