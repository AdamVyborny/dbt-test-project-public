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
