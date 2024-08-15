FROM ruby:2.7-alpine

WORKDIR /app

ADD Gemfile Gemfile.lock /app/
RUN bundle install -j 8
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

ADD . /app
