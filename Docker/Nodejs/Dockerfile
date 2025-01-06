FROM node:16 

WORKDIR /myapp

RUN yum npm install -y
  
COPY package.json .

COPY server.js .

EXPOSE 8080

CMD ['node','start']

# Build and run commands

# docker build -t myapp:v1 .

# docker run -d -p 8080:8080 --name myapp <imageid>