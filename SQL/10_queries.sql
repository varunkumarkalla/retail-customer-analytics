-- Customer Ranking

SELECT

"Customer ID",

SUM(Revenue)
AS revenue,

RANK() OVER(
ORDER BY SUM(Revenue) DESC
)
AS customer_rank

FROM retail_sales

GROUP BY "Customer ID";