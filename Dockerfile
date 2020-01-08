FROM ruby:2.6-alpine

RUN apk update && apk add build-base nodejs postgresql-dev yarn

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --binstubs --jobs=16 --retry 5 --without development test

COPY . .
RUN RAILS_ENV=production SECRET_TOKEN=megasekrit ACTION_CABLE_ALLOWED_REQUEST_ORIGINS=foo,bar bundle exec rake assets:precompile webpacker:compile

LABEL maintainer="Nick Janetakis <nick.janetakis@gmail.com>"

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
