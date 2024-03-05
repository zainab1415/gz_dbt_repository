SELECT
orders_id,
date_date,
ROUND(SUM(revenue),2) AS revenue,
ROUND(SUM(quantity),2) AS quantity,
ROUND(SUM(Purchase_cost),2) AS Purchase_cost,
ROUND(SUM(margin),2) AS margin
from {{ ref('int_sales_margin') }}
GROUP BY orders_id,date_date
ORDER BY orders_id DESC



