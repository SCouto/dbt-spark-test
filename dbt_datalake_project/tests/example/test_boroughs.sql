select borough, count(*) as n_records
from example.taxi_zone_incremental
where borough not in ('Manhattan','Staten Island','Queens','Brooklyn','Bronx','Unknown','EWR')
group by 1
having n_records > 0


