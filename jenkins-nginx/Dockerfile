FROM centos:centos7
MAINTAINER Maxfield Stewart

# Install NGINX
RUN yum -y update; yum clean all
RUN yum -y install http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm; yum -y makecache
RUN yum -y install nginx-1.8.0

# Remove default files we don't need
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/conf.d/example_ssl.conf

# Add default configuration
COPY conf/jenkins.conf /etc/nginx/conf.d/jenkins.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Copy in the 'ep' lib to replace ENV_VARS in config files
# See: https://github.com/kreuzwerker/envplate
COPY bin/ep /usr/local/bin/ep

EXPOSE 80

# This command will parse our nginx conf at runtime and
# replace ENV_VARS, then start nginx
CMD ["/usr/local/bin/ep", "-v", "/etc/nginx/conf.d/jenkins.conf", "--", "/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
