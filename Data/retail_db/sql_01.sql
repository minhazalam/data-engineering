select order_status, count(*) as order_count
from orders
group by 1
order by 2 desc;

select order_date, count(*) as order_count
from orders
group by 1
order by 2 desc;

select to_char(order_date,'yyyy-MM') as order_month, count(*) as order_count
from orders
group by 1
order by 2 desc;

select * from order_items;
select order_item_order_id, round(sum(order_item_subtotal)::numeric,2) as order_id_revenue
from order_items
group by 1
order by 1;


select order_date, count(*) as order_count
from orders
where order_status in ('COMPLETE','CLOSED')
group by 1
having count(*)>=120
order by 2 desc;