FROM debian:jessie

MAINTAINER "Dmitry Momot" <mail@dmomot.com>

RUN apt-get update -qq && apt-get install -y php5 php5-mysql php5-curl

ENV CODECEPTION_VERSION 2.0.16

ADD http://codeception.com/releases/$CODECEPTION_VERSION/codecept.phar /usr/local/bin/codecept
RUN chmod +x /usr/local/bin/codecept

ENTRYPOINT ["codecept"]
CMD ["--help"]
