# Configuración de la VM con Ansible

Se configuró la vm a través de 2 playbooks:
	- bc-config-playbook -> Instala java 8 y Maven
	- bc-config-playbook mysql -> Instala Mariadb

**Nota:** Decidí separar la instalación de Mariadb en un playbook aparte, porque desconocía la complejidad que podía generar instalar una base de datos, y no quería que "comprometa" la instalación de java y maven.

## Imagenes de los paquetes configurados

![Componentes instalados](/Images/Installed-components.jpg)