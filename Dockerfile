FROM ubuntu

RUN apt-get update
RUN apt-get install -y supervisor 

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf 

CMD ["/usr/bin/supervisord"]
