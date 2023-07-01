/*
bus-server[uniqueID].database.windows.net

bus-server915842.database.windows.net




*/




----DECLARE @json NVARCHAR(MAX) = '[{"user":{"id": 1, "name": "Anna"}},{"user":{"id": 2, "name": "Davide"}}]'
----SELECT * FROM
----    OPENJSON(@json) WITH (
----        [Id] INT '$.user.id', 
----        [Name] NVARCHAR(100) '$.user.name'
----    )


----	-- Microsoft Building 44
----declare @bldg44 as geography = geography::STGeomFromText('POLYGON((-122.13403149305233 47.64136608877112,-122.13398769073248 47.64058891712273,-122.13319924946629 47.64011342667547,-122.13285369830483 47.640106868176076,-122.13254221532335 47.640834858789844,-122.13257628383073 47.6410086568205,-122.13334039023833 47.64144150986729,-122.13403149305233 47.64136608877112))', 4326)

------ A point you want to check
----declare @p as geography = geography::STPointFromText('POINT(-122.13315058040392 47.64101193601368)', 4326)

------ Is the point within the perimeter?
----select @p.STWithin(@bldg44)