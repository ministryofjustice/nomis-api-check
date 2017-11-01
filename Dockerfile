FROM ruby:2.4.1-alpine

WORKDIR /app
COPY . .

RUN apk add --update build-base \
  && bundle \
  && apk del build-base

ENTRYPOINT /app/nomis-api-check.rb
