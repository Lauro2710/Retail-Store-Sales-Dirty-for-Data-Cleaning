SELECT 
    *
FROM
    retail_store
WHERE
    Quantity IS NULL OR Quantity = 0 or Trim(Quantity)=""

#Se encontaron 604 casillas en la columna quantity que estan en blanco 
