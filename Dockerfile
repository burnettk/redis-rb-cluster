FROM ruby:2.5.3-alpine3.7

WORKDIR /usr/local/bin
ADD . /usr/local/bin/

RUN chmod +x run.sh

RUN gem install redis -v 4.1.0

CMD ["./run.sh"]
