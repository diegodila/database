--Query de validação
select  cad1.date, cad1.midia,
cad1.investiment as cad1inv, cad1.impressions as cad1imp,
cad3.investiment as cad3inv, cad3.impressions as cad3imp,
cad12.investiment as cad12inv, cad12.impressions as cad12imp,
cad26.investiment as cad26inv, cad26.impressions as cad26imp, 
cad42.investiment as cad42inv, cad42.impressions as cad42imp
from (select midia,
		round(sum(cost),0) as investiment,
		round(sum(impressions),0) as impressions,
		date
		from datamarts.tb_consolidada_geral_dia tcgd
		where (date >= current_date-1)
		and (campaignname like '%cad1-%')
		and (midia in ('google','criteo','bing', 'facebook'))
		group by 1,date) cad1
full join
  (select midia,
		round(sum(cost),0) as investiment,
		round(sum(impressions),0) as impressions,
		date
		from datamarts.tb_consolidada_geral_dia tcgd
		where (date >= current_date-1)
		and (campaignname like '%cad3-%')
		and (midia in ('google','criteo','bing', 'facebook'))
		group by 1,date) cad3
on (cad3.midia = cad1.midia and cad3.date = cad1.date)
full join
  (select midia,
		round(sum(cost),0) as investiment,
		round(sum(impressions),0) as impressions,
		date
		from datamarts.tb_consolidada_geral_dia tcgd
		where (date >= current_date-1)
		and (campaignname like '%cad12-%')
		and (midia in ('google','criteo','bing', 'facebook'))
		group by 1,date) cad12
on (cad12.midia = cad1.midia and cad12.date = cad1.date)
full join
  (select midia,
		round(sum(cost),0) as investiment,
		round(sum(impressions),0) as impressions,
		date
		from datamarts.tb_consolidada_geral_dia tcgd
		where (date >= current_date-1)
		and (campaignname like '%cad26-%')
		and (midia in ('google','criteo','bing', 'facebook'))
		group by 1,date) cad26
on (cad26.midia = cad1.midia and cad26.date = cad1.date)
full join
  (select midia,
		round(sum(cost),0) as investiment,
		round(sum(impressions),0) as impressions,
		date
		from datamarts.tb_consolidada_geral_dia tcgd
		where (date >= current_date-1)
		and (campaignname like '%cad42-%')
		and (midia in ('google','criteo','bing', 'facebook'))
		group by 1,date) cad42
on (cad42.midia = cad1.midia and cad42.date = cad1.date) order by cad1.date, cad1.midia;