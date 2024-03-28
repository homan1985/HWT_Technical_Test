SELECT 
   Symbol
  ,Shortname
  , CASE 
	 WHEN FulltimeEmployees IS NULL THEN 'Null'
	 WHEN Fulltimeemployees <= 5000 THEN 'Small'
	 WHEN Fulltimeemployees <= 50000 THEN 'Medium'
	 ELSE 'Large'
	END AS Size_Category
FROM #table_name
ORDER BY Size_Category, Symbol