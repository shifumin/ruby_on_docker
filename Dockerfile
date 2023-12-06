FROM ruby:3.2.2
ENV LANG C.UTF-8

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir /app
WORKDIR /app

RUN gem install bundler --no-document && \
    gem update --system

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs=4 --no-cache

COPY . .
