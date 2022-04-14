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
and (campaignname like '%cad12-%')
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

--join 
select tcgd42.midia as mcad42, tcgd12.midia as mcad12,
round(sum(tcgd42.cost),0) as investimentcad42,
round(sum(tcgd42.impressions),0) as impressionscad42,
round(sum(tcgd12.cost),0) as investimentcad12,
round(sum(tcgd12.impressions),0) as impressionscad12,
tcgd42.date, tcgd12.date
from datamarts.tb_consolidada_geral_dia tcgd42 
join datamarts.tb_consolidada_geral_dia tcgd12 on tcgd42.mcad42 = tcgd12.mcad12
where (date >= current_date-1)
and (tcgd42.campaignname like '%cad42-%')
and (tcgd12.campaignname like '%cad12-%')
and (tcgd42.midia in ('google','criteo','bing', 'facebook'))
and (tcgd12.midia in ('google','criteo','bing', 'facebook'))
group by 1,date;


----
select tcgd42.midia as mcad42, tcgd12.midia as mcad12,
round(sum(tcgd42.cost),0) as investimentcad42,
round(sum(tcgd42.impressions),0) as impressionscad42,
round(sum(tcgd12.cost),0) as investimentcad12,
round(sum(tcgd12.impressions),0) as impressionscad12,
tcgd42.date, tcgd12.date 
from datamarts.tb_consolidada_geral_dia tcgd42 
full outer join datamarts.tb_consolidada_geral_dia tcgd12 on tcgd12.midia = tcgd42.midia 
where (tcgd42.date >= current_date-1)
and (tcgd12.date >= current_date-1)
and (tcgd12.midia is null)
and (tcgd42.midia is null)
and (tcgd42.campaignname like '%cad42-%')
and (tcgd12.campaignname like '%cad12-%')
and (tcgd42.midia in ('google','criteo','bing', 'facebook'))
and (tcgd12.midia in ('google','criteo','bing', 'facebook'))
group by tcgd42.midia,tcgd12.midia, tcgd42.date, tcgd12.date;

--select a.ID as a, b.ID as b from
--  (select * from stuff where grp = 'a') a
--full join
--  (select * from stuff where grp = 'b') b
--on b.id = a.id


select midia as m42,
round(sum(cost),0) as investiment,
round(sum(impressions),0) as impressions,
date
from datamarts.tb_consolidada_geral_dia tcgd
where (date >= current_date-1)
and (campaignname like '%cad42-%')
and (midia in ('google','criteo','bing', 'facebook'))
group by 1,date
union all
select midia as m12,
round(sum(cost),0) as investiment12,
round(sum(impressions),0) as impressions12,
date as d12
from datamarts.tb_consolidada_geral_dia tcgd
where (date >= current_date-1)
and (campaignname like '%cad12-%')
and (midia in ('google','criteo','bing', 'facebook'))
group by 1,date;



--Query de validação
select cad1.midia,
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
on cad1.midia = cad3.midia
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
on cad12.midia = cad1.midia
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
on cad26.midia = cad1.midia
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
on cad42.midia = cad1.midia;