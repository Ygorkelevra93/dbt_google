with 

source as (

    select * from {{ source('jaffle_shop_db', 'orders') }}

),

renamed as (

    select
        id,
        user_id,
        order_date,
        status

    from source

)

select * from renamed
