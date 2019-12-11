FROM tutum/lamp:latest
MAINTAINER 	GaoKun <634834595@qq.com>

#RUN mkdir /level-1
COPY level-1 /level-1/

# Preparation
RUN \
  cd /level-1 && \
  apt-get update && \
  apt-get install -yqq wget unzip php5-gd && \
  rm -rf /var/lib/apt/lists/* && \
  chmod a+w /level-1/Less-3/upload && \
  chmod a+r /level-1/Less-3/upload && \
  chmod a+r /level-1/Less-4/log && \

EXPOSE 80 3306
CMD ["/run.sh"]