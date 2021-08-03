SELECT 
	covid_data.date as Date,
	covid_data.location as Country, 
    covid_data.total_deaths as Deaths,
    covid_data.stringency_index as 'Strigency Index',
    tourist_asia_final.change_index as 'Holiday Searches'
FROM covid_data
INNER JOIN tourist_asia_final
ON covid_data.date = tourist_asia_final.date
WHERE covid_data.location = 'Japan' AND tourist_asia_final.destination_country = 'Japan'