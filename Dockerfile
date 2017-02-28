FROM rails:4.2.6

RUN apt-get update -qq && apt-get install -y freetds-dev

WORKDIR /tmp

COPY Gemfile Gemfile

COPY Gemfile.lock Gemfile.lock

RUN bundle install

RUN mkdir /spa

ADD . /spa

WORKDIR /spa

RUN RAILS_ENV=production bundle exec rake assets:precompile

CMD ["rails","server","-b","0.0.0.0","-e", "production"]
