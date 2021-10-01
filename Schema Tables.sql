----------------------------------------------------------------------------------------------------------
-- Author      : Hidequel Puga
-- Date        : 2021-10-01
-- Description : Get table from schema
----------------------------------------------------------------------------------------------------------

  select schema_name(t.schema_id) as schema_name
       , t.name                   as table_name
	   , t.create_date            
	   , t.modify_date            
    from [sys].[tables] t
   where schema_name(t.schema_id) = '[schema-name]' -- put schema name here
order by table_name;