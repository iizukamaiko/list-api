FROM ruby:3.1.0

ENV LANG=C.UTF-8 \
  TZ=Asia/Tokyo
ENV BUNDLER_VERSION 2.3.4

WORKDIR /app
RUN apt-get update -qq && apt-get install -y nodejs default-mysql-client
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN gem update --system \
    && gem install bundler -v $BUNDLER_VERSION \
    && bundle install

# Start the main process.
# CMD ["bin/rails", "server", "-b", "0.0.0.0"]