SELECT
	covid_data.date as Date,
	covid_data.location as Country,
    covid_data.total_deaths as Deaths,
    covid_data.stringency_index as 'Strigency Index',
    tourist_europe_final.change_index as 'Holiday Searches'
FROM covid_data
INNER JOIN tourist_europe_final
ON covid_data.date = tourist_europe_final.date
WHERE covid_data.location = 'Portugal' AND tourist_europe_final.destination_country = 'Portugal'
