FROM sequenceiq/spark:1.6.0
MAINTAINER gchevalley

RUN cd /tmp && curl --silent --location https://rpm.nodesource.com/setup_5.x | bash -
RUN yum install -y wget git nodejs

#RUN cd /tmp && wget http://www.eu.apache.org/dist/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz && tar -zxf apache-maven-3.3.3-bin.tar.gz -C /usr/local/
#RUN ln -s /usr/local/apache-maven-3.3.3/bin/mvn /usr/local/bin/mvn

#RUN cd /usr/local/ && git clone https://github.com/apache/incubator-zeppelin.git && cd incubator-zeppelin && mvn clean package -DskipTests -Pspark-1.6 -Phadoop-2.6 -Pyarn -Ppyspark
RUN cd /tmp && wget http://mirror.switch.ch/mirror/apache/dist/incubator/zeppelin/0.5.6-incubating/zeppelin-0.5.6-incubating-bin-all.tgz && tar -zxf zeppelin-0.5.6-incubating-bin-all.tgz -C /usr/local/ && cd /usr/local && ln -s zeppelin-0.5.6-incubating-bin-all incubator-zeppelin
ENV ZEPPELIN_HOME /usr/local/incubator-zeppelin


#replace original boot script
COPY bootstrap.sh /etc/bootstrap.sh
RUN chown root.root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
