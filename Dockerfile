FROM alpine:3.4
EXPOSE 91:8080
RUN apk add --no-cache nginx &&\
mkdir /run/nginx 
CMD ["nginx", "-g", "daemon off;"]
COPY index.html /usr/local/nginx/html
