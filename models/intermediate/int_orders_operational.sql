SELECT
m.orders_id,
m.date_date,
ROUND(M.margin + ship.shipping_fee - (ship.logcost + CAST(ship.ship_cost AS FLOAT64)),2) AS operational_margin,
m.quantity,
m.revenue,
m.Purchase_cost,
m.margin,
ship.shipping_fee,
ship.logcost,
ship.ship_cost
from {{ ref('int_orders_margin') }} m
LEFT JOIN {{ ref('stg_raw__ship') }} ship
     USING (orders_id)
     ORDER BY orders_id DESC



