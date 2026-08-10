select * 
from retail_store
where trim(Item)="" or item is null

#Se encontraron 1213 filas sin nombre de item 