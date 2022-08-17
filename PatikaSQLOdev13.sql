--film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.

Select title,replacement_cost
From film 
Where title Like 'K%'
Order by replacement_cost
Limit 4

--film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?

Select Count(rating),rating
From film
Group By rating
Order by Count(rating) DESC
Limit 1

--cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?

Select first_name
From customer
Where customer_id= Any(
Select customer_id
From payment
Group by customer_id
Order By Count(customer_id) desc
Limit 1)

--category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.

Select category_id,count(category_id)
From film_category
Group By category_id

--film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?

Select title
From film
Where title Ilike '%e%e%e%e%'