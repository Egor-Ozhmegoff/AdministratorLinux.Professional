FROM alpine:3.19

RUN apk update && apk upgrade
RUN apk --no-cache add bash
RUN apk --no-cache add nginx

CMD ["bash"]

COPY ./nginx.conf /etc/nginx/http.d/default.conf
COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 8080

CMD ["nginx","-g","daemon off;"]