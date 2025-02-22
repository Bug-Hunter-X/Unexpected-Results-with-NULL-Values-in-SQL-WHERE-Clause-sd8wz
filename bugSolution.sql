```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL;
```

This corrected query explicitly checks if the `salary` is not NULL before comparing it to the threshold.  This ensures that employees with NULL salaries are not excluded from the results if they meet other criteria.