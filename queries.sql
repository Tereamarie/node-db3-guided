select product.ProductName, supplier.CompanyName
from product
inner join supplier on product.supplierID = supplier.id
-- list of products including the caegory name, organized by category. Show the category name first

select category.CategoryName, product.ProductName
from product
join category on product.CategoryId = category.Id
order by categoryName;

---joining three tables
select c.CategoryName as Category, 
   p.ProductName as product
   , s.companyName as ShippedBy
from product as p
join category as c
   on p.CategoryId = c.Id
join supplier as s
  on p.supplierId = s.id
order by c.categoryName

insert into users (username) values ('confucius'), ('aristotle'), ('kanye');  


select p.Contents as Quote, u.username as PostedBy
from posts as p
join users as u on p.user_id = p.id;
---LEFT JOIN
--list all users and post info if available 
select u.username as Writer, p.contents as Quote
from users as u left join posts as p on p.user_id = u.id;

--list all users that have a posts,

select distinct u.username as Writer 
from users as u 
left join posts as p 
  on p.user_id = u.id
  where p.contents is not null;

--and all users that do not have posts



select u.username as Writer, p.contents as Quote
from users as u 
left join posts as p 
  on p.user_id = u.id
  where p.contents is null;

--select distinct user_id from posts;

--select * from users;
  
--list all users, and include post content if available
--list all users that have a posts,
select distinct  u.username
from users as u 
inner  join posts as p
  on u.id = p.user_id
order by u.username;


--and all users that do not have posts


select distinct  u.username, p.*
from users as u 
left join posts as p
  on u.id = p.user_id
where p.id is null 
order by u.username;

-- How to see how many posts using aggrigator
select user_id, count(*) from posts
group by user_id;--piling up coins per denomination

select denomination, sum(value) as total from coins
group by denomination;--piling up coins per denomination


--Helper file---



