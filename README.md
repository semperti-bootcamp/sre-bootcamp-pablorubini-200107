# Upload de App a nexus

Se provee el Link a nexus snapshot [aquí](http://10.252.7.162:8081/#browse/browse:maven-snapshots:com%2Fsemperti%2Ftrial%2Fjournals%2F1.0-SNAPSHOT%2F1.0-20200110.140822-3)

**NOTA:** Como existe una version 1.0 en el repo releases, no me permite subir uno nuevo. pero el proceso seria el mismo, renombrando la nueva version como journals-1.0 en vez de journals-1.0-SNAPSHOTS.

## Desafíos encontrados

Para poder cargar el snapshot de la aplicación Java a Nexus, modifiqué el pom.xml, agregandole el *deploy plugin*, configurando los datos del servidor Nexus

![Deploy Plugin](/Images/deploy-plugin.png)

Adicionalmente, debí configurar el archivo settings.xml, es decir, configuré maven para que chequee el repositorio de nexus en vez del repositorio por default.

![Settings](/Images/settings.png)
