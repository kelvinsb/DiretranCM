FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client imagemagick

ENV APP_HOME /myapp

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile $APP_HOME/Gemfile
# COPY Gemfile.lock $APP_HOME/Gemfile.lock

# RUN gem install --default bundler -v 2.0.2
RUN bundle install
COPY . $APP_HOME