FROM tutum/lamp:latest
MAINTAINER 	GaoKun <634834595@qq.com>

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /app
COPY level-1 ./level-1/
COPY index.php .

# Preparation
RUN \
  apt-get update && \
  apt-get install -yqq wget unzip php5-gd && \
  rm -rf /var/lib/apt/lists/* && \
  echo 'session.save_path = "/tmp"' >> /etc/php5/apache2/php.ini && \
  sed -ri -e "s/^allow_url_include.*/allow_url_include = On/" /etc/php5/apache2/php.ini && \
  cd /app && \
  chmod a+w ./level-1/Less-3/upload && \
  chmod a+r ./level-1/Less-3/upload && \
  chmod a+r ./level-1/Less-4/log &&\
  cat ./level-1/Less-1/login.php

EXPOSE 80 3306
CMD ["/run.sh"]