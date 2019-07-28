FROM alpine:3.4
EXPOSE 80:8080
RUN apk add --no-cache nginx &&\
RUN mkdir /run/nginx &&\
RUN apk add docker &&\
CMD ["nginx", "-g", "daemon off;"]
service docker start
COPY index.html /usr/local/nginx/html
