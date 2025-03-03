-- To get the count of customers by loan purpose for California, we need to filter the records where 
-- the 'State' is 'California'. Then, we group the results by 'Loan_Purpose' and count the number of 
-- records in each group. The relevant columns for this query are 'State' and 'Loan_Purpose'.
SELECT
    "Loan_Purpose",
    COUNT(*) AS "Customer_Count"
FROM
    "SEDEMO"."ERIND"."FINAIADVISOR_LABELED_SCORED_STACKED"
WHERE
    "State" = 'CA'
GROUP BY
    "Loan_Purpose"
ORDER BY
    "Customer_Count" DESC;