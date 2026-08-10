with productos as (select distinct item, Price_Per_Unit, Category
from  retail_store
where item <>"")

update retail_store
join productos on retail_store.Category=productos.Category and retail_store.Price_Per_Unit=productos.Price_per_unit
set retail_store.item=productos.item
where trim(retail_store.item)=""


#Usamos una clausula with para hacer mas legible la subconsulta de donde se obtuvieron los nombres de los items. Luego se hace un update junto con un join de nuestra subconsulta, para colocar los nombres de los items.