SELECT 
	covid_data.continent as Continent, 
	CEILING(SUM(covid_data.new_deaths)) as Deaths, 
	avg(healthexpenditure.HealthExpenditure) as 'Health Expenditure', 
    avg(covid_data.hospital_beds_per_thousand) as 'Hospital Beds'
FROM covid_data
INNER JOIN healthexpenditure
ON covid_data.location = healthexpenditure.Country
GROUP BY covid_data.continent
Order by Deaths desc
