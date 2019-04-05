FROM ruby:2-alpine

COPY docker/bin/entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh && \
    apk --no-cache add \
      build-base \
      libxml2-dev \
      libxslt-dev \
	    nodejs \
	    postgresql-client \
	    postgresql-dev \
	    tzdata && \
    mkdir -p /data/rails-girls

WORKDIR /data/rails-girls
USER guest

COPY src/Gemfile /data/rails-girls/Gemfile
COPY --chown=guest:nogroup src/Gemfile.lock /data/rails-girls/Gemfile.lock

RUN bundle install

COPY src /data/rails-girls

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
