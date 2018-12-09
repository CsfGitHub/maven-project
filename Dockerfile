#imagen desde la que empezamos
FROM tomcat:8.0

#cada vez que se copia war files en la ruta webapps, como hacemos a continuacion, tomcat los detecta automáticamente y carga ene l entorno
ADD ./webapp/target/*.war /usr/local/tomcat/webapps 

#port dentro del docker
EXPOSE 8080

#puede no ser necesario, pero mejor arracar el tomcat
CMD ["catalina.sh", "run"]