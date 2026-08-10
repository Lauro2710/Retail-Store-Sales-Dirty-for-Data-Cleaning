select (Price_Per_Unit*Quantity) as total_gastado,Total_Spent
from retail_store
where Quantity<>0 and Total_Spent<>0
having Total_Spent=total_gastado

#11362 datos tienen correcto los Total_Spent