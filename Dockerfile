FROM ruby:2.6.8

ADD . /Sinatra-Docker
WORKDIR /Sinatra-Docker

RUN gem install bundler -v 1.17.2
RUN bundle install

EXPOSE 8080
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "8080"]
