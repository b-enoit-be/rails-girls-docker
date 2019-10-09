FROM ruby:2-alpine

ENV HOME /usr/local/bundle

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
    mkdir -p /data/rails-girls && \
    bundle config --local disable_platform_warnings true && \
    gem install rails && \
    chown -R guest:nogroup /data/rails-girls /usr/local/bundle

USER guest

WORKDIR /data/rails-girls

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
