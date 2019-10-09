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
    mkdir -p /data/rails-girls && \
    chown guest:nogroup /data/rails-girls	    

USER guest

ENV HOME /usr/local/bundle 

RUN bundle config --local disable_platform_warnings true && \
    gem install rails
    
WORKDIR /data/rails-girls    

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
