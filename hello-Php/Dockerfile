FROM node:alpine

MAINTAINER inSreeMan@gmail.com

# Copy app to /src
COPY . /var/www/php
COPY .docker/php/vhost.conf /etc/apache2/vhost.d/000-default.conf

#install php
RUN apk add --no-cache apache2 php7-apache2 \
    && echo "IncludeOptional /etc/apache2/vhost.d/*.conf" >> /etc/apache2/httpd.conf \
    && ln -sf /proc/self/fd/1 /var/log/apache2/access.log \
    && ln -sf /proc/self/fd/1 /var/log/apache2/error.log \ 
    # fix "could not create /run/apache2/httpd.pid" error \
    && mkdir /run/apache2

# Install app and dependencies into /src

EXPOSE 80

CMD httpd -D FOREGROUND