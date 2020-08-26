FROM nginx

COPY default.conf /etc/nginx/conf.d/default.conf
COPY key.pem /etc/nginx/conf.d/key.pem
COPY cert.pem /etc/nginx/conf.d/cert.pem
COPY ./dashboard /etc/nginx/html
COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT /start.sh
