with 

source as (

    select * from {{ source('raw', 'bing') }}

),

renamed as (

    select

    from source

)

select * from renamed
