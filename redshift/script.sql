Select date,
midia,
round(sum(cost),0) as investiment
from datamarts.tb_consolidada_geral_dia  
where (date >= current_date-3)
and (campaignname like '%cad%')
group by 1,2;