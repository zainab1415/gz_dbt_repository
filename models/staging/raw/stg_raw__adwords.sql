with 

source as (

    select * from {{ source('raw', 'adwords') }}

),

renamed as (

    select

    from source

)

select * from renamed
