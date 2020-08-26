echo "Adding $TARGET to the NGINX config"
cat /etc/nginx/conf.d/default.conf
sed -i -e "s,___TARGET___,$TARGET,g" /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'