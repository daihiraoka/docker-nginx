FROM centos:7
RUN yum install -y epel-release && yum install -y nginx && yum clean all -y
ADD index.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]
