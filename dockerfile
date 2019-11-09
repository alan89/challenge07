FROM centos:latest
MAINTAINER EPAM-SYSTEMS
RUN yum -y install httpd
RUN mkdir -p /var/run/apache2
RUN mkdir -p /var/log/apache2
RUN mkdir -p /var/lock/apache2
COPY index.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
