# Desde nuestro contenedor con la imagen de Alpine
FROM alpine
# Instala nuestro servidor web apache
RUN apk add apache2
#
COPY ./ /var/www/localhost/htdocs/
#Levantar el contenedor
    #CMD httpd -X
ENTRYPOINT ["httpd", "-X"]