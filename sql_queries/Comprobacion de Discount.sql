select *
from retail_store
where Discount_Applied is null or Trim(DIscount_applied)=""

#Solo deberia haber booleans en Discount_applied pero se encontraron casillas en blanco. Se encontraron 4199 filas con casillas en blanco