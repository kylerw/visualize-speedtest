FROM linuxserver/baseimage.python

MAINTAINER kylerw <kylerw@gmail.com>

ENV PIPLIST="plotly"
ENV APTLIST="python-pandas"

# install packages
RUN pip install -U $PIPLIST 

RUN apt-get update -q  && \
apt-get install $APTLIST -qy && \
apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

#Adding Custom files
ADD init/ /etc/my_init.d/
RUN chmod -v +x /etc/my_init.d/*.sh

#ADD services/ /etc/service/
#RUN chmod -v +x /etc/service/*/run

# Volumes and Ports
VOLUME /config 
