

-- The user wants to count the number of customers by loan purpose for the state of California (CA). We 
-- will use the "State" column to filter for "CA" and group the results by "Loan_Purpose". The query 
-- will count the number of entries for each loan purpose.
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