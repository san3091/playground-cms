# ruby image
FROM ruby:2.2.3-slim

# install essential Linux packages
RUN apt-get update && apt-get install -y build-essential libpq-dev postgresql-client

# where the app will live
ENV RAILS_ROOT /var/www/sample_casein

# set working directory
WORKDIR $RAILS_ROOT

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN gem install bundler
RUN gem install execjs

RUN bundle install

COPY . .

CMD [ "config/containers/app_cmd.sh" ]
