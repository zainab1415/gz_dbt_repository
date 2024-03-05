with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        shipping_fee_1,
        logcost,
        ship_cost,
        orders_id || '-' || shipping_fee as orders_shipping

    from source

)

select * EXCEPT(shipping_fee_1) from renamed
