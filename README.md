# Unexpected Results with NULL Values in SQL WHERE Clause

This repository demonstrates a common SQL query error related to handling NULL values in comparison conditions.

The `bug.sql` file contains a query that unintentionally excludes employees with NULL salaries. The `bugSolution.sql` file provides a corrected version of the query that handles NULL values appropriately.

## Bug Description
The initial query filters employees by department and salary, but it fails to account for NULL salaries.  Any employee with a NULL salary is excluded from the results even if they're in the intended department.  This unexpected behavior can lead to inaccurate reporting and analysis.

## Solution
The solution uses the `IS NOT NULL` clause to explicitly check for non-NULL salaries and incorporates this with the `AND` operator to combine it with the salary range condition, ensuring that employees with NULL salaries are treated correctly.