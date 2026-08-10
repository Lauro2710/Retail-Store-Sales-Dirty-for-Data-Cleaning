update retail_store
set Price_per_Unit = Total_Spent/Quantity
where Price_Per_Unit=0 and Quantity<>0 and Total_Spent<>0

#Actualizar la columna Price_per_unit con el calculo de precio por unidad(Total_Spent/Quantity) 