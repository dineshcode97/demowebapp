FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
COPY /var/lib/jenkins/workspace/DockerizeApp/* /var/www/html
RUN apt-get clean
EXPOSE 80
