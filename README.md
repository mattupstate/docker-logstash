## Logstash Dockerfile


This repository contains **Dockerfile** of [Logstash](http://www.logstash.net/).


### Dependencies

* [dockerfile/java](http://dockerfile.github.io/#/java)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download:

    $ docker pull mattupstate/logstash


### Usage

Run Logstash with the default configuration:

    $ docker run dockerfile/elasticsearch [OPTIONS]

Without specifying any options the container will run Logstash with a `stdin` input and `stdout` output.


### Configuration

If you'd like to use a custom configuration you can specify the configuration as a command line argument:

    $ docker run mattupstate/logstash -e 'input { syslog { } } output { elasticsearch { host => 172.17.8.101, port => 9300 } }'

Or you may attach a volume that contains a configuration file and specify the path to a configuration file:

    $ docker run -v <config-dir>:/etc/logstash mattupstate/logstash -f /etc/logstash/logstash.conf
