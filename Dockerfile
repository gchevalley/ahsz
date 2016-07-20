FROM sequenceiq/spark:1.6.0
MAINTAINER gchevalley

RUN cd /tmp && curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
RUN yum install -y git nodejs R vim wget

RUN cd /tmp && wget http://mirror.easyname.ch/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && tar -zxf apache-maven-3.3.9-bin.tar.gz -C /usr/local/ && ln -s /usr/local/apache-maven-3.3.9/bin/mvn /usr/local/bin/mvn && rm /tmp/apache-maven-3.3.9-bin.tar.gz

RUN cd /tmp && wget http://mirror.switch.ch/mirror/apache/dist/zeppelin/zeppelin-0.6.0/zeppelin-0.6.0-bin-all.tgz && tar -zxf zeppelin-0.6.0-bin-all.tgz -C /usr/local/ && cd /usr/local && ln -s zeppelin-0.6.0-bin-all zeppelin && rm /tmp/zeppelin-0.6.0-bin-all.tgz
ENV ZEPPELIN_HOME /usr/local/zeppelin

#replace original boot script
COPY bootstrap.sh /etc/bootstrap.sh
RUN chown root.root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
