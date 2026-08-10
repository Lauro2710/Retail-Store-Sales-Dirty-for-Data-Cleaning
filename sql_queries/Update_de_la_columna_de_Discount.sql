update retail_store
set Discount_Applied="Pendiente"
where trim(Discount_Applied)=""

#Se actualizo la columna de discount, ya que tenia casillas en blanco, se les coloco pendiente. Porque es informacion que necesita revisarse para saber si se aplico descuent o no