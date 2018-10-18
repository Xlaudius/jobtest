FROM ruby:1.01

RUN apt-get update -yqq
RUN apt-get -yqq --no-install-recommends nodejs

COPY . /usr/src/app/

WORKDIR /usr/src/app

RUN bundle install

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
