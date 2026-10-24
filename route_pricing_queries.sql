use logistics_db;

select l.route_id,
       count(distinct l.load_id) as num_loads,
       sum(e.detention_minutes) * 1.0 / count(distinct l.load_id) as avg_detention_min_per_load
from loads l
join delivery_events e on e.load_id = l.load_id
where l.load_status = 'Completed'
group by l.route_id
order by avg_detention_min_per_load desc;