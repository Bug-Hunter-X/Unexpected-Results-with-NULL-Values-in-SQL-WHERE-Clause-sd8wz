```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```

This query might seem correct at first glance, but it can lead to unexpected results if the `salary` column has NULL values.  The `salary > 100000` condition will treat NULL as neither greater than nor less than 100000, effectively excluding employees with NULL salaries, even if they are in the Sales department. This is because a comparison to a NULL value always results in UNKNOWN.