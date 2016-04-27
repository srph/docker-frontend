FROM srph/debian-es

RUN apt-get update \
  && curl -sL https://deb.nodesource.com/setup_5.x | bash - \
  && apt-get install nodejs nginx \
  && rm -rf /var/lib/apt/lists/*

COPY config/nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
RUN npm install

CMD nginx -g daemon off;
