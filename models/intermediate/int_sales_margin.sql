SELECT
products_id,
date_date,
orders_id,
revenue,
quantity,
CAST(purchase_price AS FLOAT64) AS price,
ROUND(sales.quantity*CAST(product.purchase_price AS FLOAT64),2) AS Purchase_cost,
sales.revenue - ROUND(sales.quantity*CAST(product.purchase_price AS FLOAT64),2) AS margin
from {{ ref('stg_raw__sales') }} sales
LEFT JOIN {{ ref('stg_raw__product') }} product
     USING (products_id)



