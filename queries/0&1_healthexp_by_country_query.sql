SELECT 
	covid_data.location as Country, 
    avg(healthexpenditure.HealthExpenditure) as 'Health Expenditure'
FROM covid_data
INNER JOIN healthexpenditure
ON covid_data.location = healthexpenditure.Country 
GROUP BY covid_data.location