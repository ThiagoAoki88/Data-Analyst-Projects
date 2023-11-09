select * from pizza_sales

select top 5 pizza_name, sum(quantity) as Total_Pizzas_Sold
from pizza_sales
--aqui o n° representa o mes, assim ele faz uma pesquisa especifica e não geral
where MONTH(order_date) = 1
group by pizza_name
order by sum(quantity) asc