# Creación de un *Manifest*

El archivo *Manifest* genera un nuevo despligue del container de la app al cambiar la variable *Ambiente*
La misma puede tomar los valores de *Produccion* o *Staging*

El container *Produccion* será accesible mediante el link 10.252.7.110:8080

El container de *Staging* será accesible mediante el link 10.252.7.110:8081


## Problemas encontrados

Me llevó más de lo previsto entender el concepto del archivo *Manifest* y encontrar la forma de que funcionara todo en base a un cambio en el archivo.
Por ende, una vez comprendido el punto (gracias a tu ayuda Jon), busqué una solución conceptual, y no una buena práctica ni versionado del mismo archivo.