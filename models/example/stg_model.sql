   with source as (
        
        select * from {{ source('in.c-test-bucket', 'test') }}
        
    ),
    
    renamed as (
        
        select
            "id",
            "col2",
            "col3",
            "col4"
        from source
    
    )
    
    select * from renamed
    
