FROM openshift/ruby-20-centos7

RUN gem install sinatra
ADD app.rb /tmp/app.rb
EXPOSE 8080
CMD ruby /tmp/app.rb
