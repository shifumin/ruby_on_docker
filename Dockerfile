FROM ruby:3.2.2
ENV ROOT="/app"
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

WORKDIR ${ROOT}

RUN gem install bundler --no-document && \
    gem update --system

COPY Gemfile Gemfile.lock ${ROOT}
RUN bundle install --jobs=4 --no-cache

COPY . .
