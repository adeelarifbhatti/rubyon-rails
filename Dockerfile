FROM ruby:alpine

RUN apk update
RUN apk add yarn build-base nodejs postgresql-dev tzdata
RUN gem install -N rails

RUN mkdir -p /app
WORKDIR /app

COPY ./app/Gemfile /app
COPY ./app/Gemfile.lock /app
RUN bundle install
