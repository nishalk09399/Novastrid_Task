
FROM nginx:latest 

RUN yum install nginx -y 

RUN rm -rf /usr/share/nginx/index.html

COPY /myapp  /usr/share/nginx/

EXPOSE 8080

CMD ['nginx','-g','daemon:off']

# Build and run commands 

# docker build -t myapp:v1 .

# docker run -d -p 8080:80 --name myapp <imageid>