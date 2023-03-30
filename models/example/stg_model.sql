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
    
    with sourceShared as (
        
        select * from {{ source('in.c-demo-keboola-ex-google-drive-963568866', 'account') }}
        
    ),
    
    renamedShared as (
        
        select
            "Id",
            "Name",
            "Region",
            "Status"
        from sourceShared
    
    )
    
    select * from renamedShared
