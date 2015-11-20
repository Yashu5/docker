FROM openshift/ruby-20-centos7
RUN yum update && apt-get install -y ruby ruby-dev
RUN yum install gem sinatra
ADD app.rb /tmp/app.rb
EXPOSE 8080
CMD ruby /tmp/app.rb
