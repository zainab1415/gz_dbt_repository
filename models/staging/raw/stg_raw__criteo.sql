with 

source as (

    select * from {{ source('raw', 'criteo') }}

),

renamed as (

    select

    from source

)

select * from renamed
