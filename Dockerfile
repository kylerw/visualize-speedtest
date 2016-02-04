FROM linuxserver/baseimage.python

MAINTAINER kylerw <kylerw@gmail.com>

ENV PIPLIST=""

# install packages
RUN pip install -U $PIPLIST && \
apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

#Adding Custom files
ADD init/ /etc/my_init.d/
ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run && chmod -v +x /etc/my_init.d/*.sh

# Volumes and Ports
VOLUME /config /scripts
EXPOSE 8095
