# Centro-de-Ayuda-SAH
<b>Proyecto de dasarrollo para Trabajo Final de Grado</b><br>
<b>Requerimientos para una instalación de forma local de la aplicación:</b>
* Sistema Operativo Windows 10 (Home, Pro)
* Instalación de Base de Datos Oracle en cualquiera de sus versiones superiores a la 9i, la utilizada actualmente para éste desarrollo es la 18c XE, la versión no paga de la base de datos https://www.oracle.com/technetwork/es/articles/apex/instalar-bd-oraclexe18c-5487194-esa.html (Link de instalación)
* Actualización del entorno de trabajo Oracle Application Express ORDS, el ORDS es opcional https://www.oracle.com/technetwork/es/articles/apex/instalar-oracle-apex18-5487195-esa.html
* Creación de los Tablespace correspondientes a la aplicación: https://docs.oracle.com/cd/B19306_01/server.102/b14220/physical.htm (link Oficial)
<b>Nombre de Table Space:</b><br>
- Para la Base de datos: CENTRO_AYUDA_DATA.DBF (1G)
- COMUNES_DATA (1G).
- IMG_DATA (1G).
- USUARIOS_DATA (1G).
* Exportación de la Base de Datos (Donde se encuentran las funciones, secuencias y procedimientos requeridos por la aplicación).
* Exportación de la aplicación en formato SQL.
* Para el uso de los reportes: Instalar JasperServer Community, y para el diseño de los reportes JasperStudio.
* Subir al servidor los archivos de la Carpeta Jasper, para que los recursos se realicen.
* Conectar a la base de datos de Oracle 18c XE, desde el JasperStudio, mediante el OJDBC compatible, en este caso la versión 8.
* Usar el conector también en el servidor para que la fuente de datos también pueda ser actualizada desde el Jasper Studio.
