FROM tutum/lamp:latest
MAINTAINER 	GaoKun <634834595@qq.com>

ENV DEBIAN_FRONTEND noninteractive
ENV VERSION 1.0.0

# copy本地代码目录和目录下所有文件到docker
WORKDIR /app
COPY level-1 .

# Preparation
RUN \
  rm -fr /app/* && \
  apt-get update && apt-get install -yqq wget unzip php5-gd && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf app/* && \
  chmod a+w /app/level-1/Less-3/upload && \
  chmod a+r /app/level-1/Less-3/upload && \
  chmod a+r /app/level-1/Less-4/log && \

EXPOSE 80 3306
CMD ["/run.sh"]