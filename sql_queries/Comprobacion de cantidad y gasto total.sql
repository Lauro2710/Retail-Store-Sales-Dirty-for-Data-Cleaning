select * 
from retail_store
where (Quantity=0 or Quantity is null) and (Total_Spent=0 or Total_Spent is null)

# se encontraron 604 columnas que no tienen cantidad y total gastado, coincide estas dos columnas