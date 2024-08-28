FROM ruby:3.3.0
WORKDIR /github-package-demo
ADD . /github-package-demo
COPY entrypoint.sh /usr/bin
COPY deploy_gem.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/deploy_gem.sh
ENTRYPOINT ["entrypoint.sh"]
# Gem to deploy is taken from env
CMD ["deploy_gem.sh"]
