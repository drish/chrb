FROM ruby:2.3

WORKDIR /gem

RUN apt-get update && \
    apt-get install -yqq vim

ADD Gemfile /gem
RUN bundle install

ADD . /gem
