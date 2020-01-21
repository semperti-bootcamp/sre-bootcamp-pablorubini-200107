# Configuración de la VM con Ansible

Se configuró la vm a través de 2 playbooks:
	- bc-config-playbook -> Instala java 8 y Maven
	- bc-config-playbook mysql -> Instala Mariadb

## Imagen de los paquetes configurados
Aqui se muestran los paquetes instalados y las versiones correspondientes acorde a lo solicitado

![Componentes instalados](/Images/Installed-components.jpg)

## Imagen de los test satisfactorios

Aqui se muestra el output de los tests de la aplicación Journals, con éxito.

![Test aplicativo](/Images/maven-tests.jpg)

## Imagen de la app web

Aqui se muestra el inicio de la aplicación web


![Interfaz Web App](/Images/app.png)


**Nota:** Decidí separar la instalación de Mariadb en un playbook aparte, porque desconocía la complejidad que podía traer instalar una base de datos, y no quería que "comprometa" la instalación de java y maven. 

**Aprendizaje:** A medida que fui investigando Ansible, descubrí que un *best practice* hubiese sido implementar roles, y mediante estos, instalar los prerequisitos solicitados. Será tema de estudio posterior, entendiendo la mejora que implica realizar configuraciones a través de roles.