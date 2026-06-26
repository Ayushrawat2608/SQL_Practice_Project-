CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category TEXT,
  price NUMERIC(10,2),
  stock_quantity INT,
  is_available BOOLEAN,
  added_on DATE
);
select * from products ;


CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  product_id INT,
  quantity INT,
  order_date DATE,
  customer_name VARCHAR(50),
  payment_method VARCHAR(50),
  FOREIGN KEY (product_id)
  REFERENCES products(product_id) ON DELETE CASCADE
);

select * from orders;

--Q1. Show each order along with the product name and price

select p. product_name ,p. price , o. order_id , o. customer_name 
from products p 
join orders o 
on p. product_id = o . product_id ;

--Q2. Show all products even if they were never ordered

select p. product_name , p . category , o . order_id
from products p
left join orders o 
on  p. product_id = o . product_id ;

--Q3.Show orders for only ‘Electronics’ category

select p. product_name , p.category , o.order_id 
from products p
join orders o 
on p. product_id = o.product_id 
where p.category = 'Electronics';

--Q4.List all orders sorted by product price (high to low).

select p.product_name, p.price,o.order_id ,o.customer_name 
from orders o
join products p
on p.product_id = o. product_id
order by p. price  desc ;

--Q5.Show number of orders placed for each product.

SELECT p.product_name, COUNT(o.order_id) AS total_orders
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name;

--Q6.Show total revenue earned per product.

select p. product_name , sum (p.price * o.quantity) as total_revenue 
from products p
join orders o 
ON p.product_id = o.product_id 
group by p. product_name;

--Q7.Show products where total order revenue > ₹2000.

select p. product_name , sum (p.price * o.quantity) as total_revenue 
from products p
join orders o 
ON p.product_id = o.product_id 
group by p. product_name
having sum (p.price * o.quantity) > 2000 ;

--Q8.Show unique customers who ordered ‘Fitness’ products

select p.product_name , o.customer_name 
from products p
join orders o 
ON p.product_id = o.product_id 
where category = 'Fitness';