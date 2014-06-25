FROM dockerfile/java
MAINTAINER Matt Wright <matt@nobien.net>

WORKDIR /opt

RUN curl -O https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz
RUN tar zxvf logstash-1.4.2.tar.gz
RUN mkdir /etc/logstash

VOLUME /etc/logstash

EXPOSE 514
EXPOSE 9200
EXPOSE 9292
EXPOSE 9300

ENTRYPOINT ["/opt/logstash-1.4.2/bin/logstash"]
CMD ["-e", "input { stdin { } } output { stdout {} }"]
