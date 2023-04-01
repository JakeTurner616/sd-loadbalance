#this is an example to use this simple nginx loadbalance configuation with sd behind docker
#base image
FROM nginx

#copy Nginx configuration file to container
COPY nginx.conf /etc/nginx/nginx.conf

#expose ports
EXPOSE 80

#start Nginx
CMD ["nginx", "-g", "daemon off;"]
