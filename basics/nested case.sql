--nested case
select * from products

-- group the data based on cols category & price into diff categories i.e affordable and premium

select *,
case
	when category in ('electronics') then
		case when price>=300 then 'premium electronics'
		else 'affordable electronics'
		end
	when category='furniture' then
		case when price>=250 then 'premium furniture'
		else 'affordable furniture'
		end
else
	case when price>=25 then 'premium accesories'
	else 'affordable accesories'
	end
end as [groups]
from products








