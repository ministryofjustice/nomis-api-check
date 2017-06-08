FROM ruby:2.4.1-alpine

WORKDIR /app
COPY . .
RUN bundle

ENTRYPOINT /app/nomis-api-check.rb
