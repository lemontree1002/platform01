FROM tutum/lamp:latest
MAINTAINER 	GaoKun <634834595@qq.com>

ENV DEBIAN_FRONTEND noninteractive

COPY level-1 /level-1/
COPY index.php /level-1/

# Preparation
RUN \
  apt-get update && \
  apt-get install -yqq wget unzip php5-gd && \
  rm -rf /var/lib/apt/lists/* && \
  chmod a+w ./level-1/Less-3/upload && \
  chmod a+r ./level-1/Less-3/upload && \
  chmod a+r ./level-1/Less-4/log

EXPOSE 80 3306
CMD ["/run.sh"]