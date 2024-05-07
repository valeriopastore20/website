FROM ubuntu
RUN apt update
RUN apt install -y nginx

COPY default /etc/nginx/sites-available/
COPY static /var/www/html/static
COPY templates/index.html /var/www/html/index.html

# Esponi la porta per il server
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 443

