Select date,
midia,
round(sum(cost),0) as investiment
from datamarts.tb_consolidada_geral_dia  
where (date >= current_date-3)
and (campaignname like '%cad%')
group by 1,2;

select midia, round(sum(cost),0)
from datamarts.tb_consolidada_geral_dia tcgd
where (date >= current_date-1)
and (campaignname like '%cad1-%')
group by 1;

select midia,
round(sum(cost),0) as investiment,
round(sum(impressions),0) as impressions,
date
from datamarts.tb_consolidada_geral_dia tcgd
where (date >= current_date-1)
and (campaignname like '%cad1-%')
group by 1,date;

Select date,
midia,
round(sum(cost),0) as investiment
from datamarts.tb_consolidada_geral_dia
where (date >= current_date-3)
and (campaignname like '%cad%')
group by 1,2;

select midia,
round(sum(cost),0) as investiment,
round(sum(impressions),0) as impressions,
date
from datamarts.tb_consolidada_geral_dia tcgd
where (date >= current_date-1)
and (campaignname like '%cad42-%')
and (midia in ('google','criteo','bing', 'facebook'))
group by 1,date;

select midia,
round(sum(cost),0) as investiment,
round(sum(impressions),0) as impressions,
date
from datamarts.tb_consolidada_geral_dia tcgd
where (date >= current_date-1)
and (campaignname SIMILAR TO '%cad12-%|%cad42-%')
and (midia in ('google','criteo','bing', 'facebook'))
group by 1,date;

