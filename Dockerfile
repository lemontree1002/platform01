FROM tutum/lamp:latest
MAINTAINER 	GaoKun <634834595@qq.com>

ENV DEBIAN_FRONTEND noninteractive
ENV VERSION 1.0.0

RUN mkdir -p /app/
COPY level-1 /app/

# Preparation
RUN \
  cd /app && \
  rm -fr /app/* && \
  apt-get update && apt-get install -yqq wget unzip php5-gd && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf app/* && \
  chmod a+w /app/Less-3/upload && \
  chmod a+r /app/Less-3/upload && \
  chmod a+r /app/Less-4/log && \

EXPOSE 80 3306
CMD ["/run.sh"]