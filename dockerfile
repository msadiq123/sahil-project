# this is our first dockerfile

FROM ubuntu
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install nginx -y
COPY index.html /var/www/html/
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;"]

