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
  cd /app && \
  chmod a+w ./level-1/Less-3/upload && \
  chmod a+r ./level-1/Less-3/upload && \
  chmod a+r ./level-1/Less-4/log

EXPOSE 80 3306
CMD ["/run.sh"]