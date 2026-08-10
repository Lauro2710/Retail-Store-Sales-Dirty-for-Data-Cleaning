SELECT 
    *
FROM
    retail_store
WHERE
    TRIM(Price_Per_Unit) = ''
        OR Price_Per_Unit = 0
        
#Se encontraron 609 filas que estan en blanco en la columna price per unit