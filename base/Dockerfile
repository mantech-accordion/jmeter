FROM openjdk:8-jdk
MAINTAINER bskim@mantech.co.kr
		
ARG JMETER_VERSION=5.2.1
		
RUN apt-get clean && \
apt-get update && \
apt-get -qy install \
wget \
telnet \
iputils-ping \
unzip \
libxrender1 libxtst6 libxi6

RUN   mkdir /jmeter \
&& cd /jmeter/ \
&& wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz \
&& tar -xzf apache-jmeter-$JMETER_VERSION.tgz \
&& rm apache-jmeter-$JMETER_VERSION.tgz
		
		
ADD lib /jmeter/apache-jmeter-$JMETER_VERSION/lib
		
ENV JMETER_HOME /jmeter/apache-jmeter-$JMETER_VERSION/
ENV PATH $JMETER_HOME/bin:$PATH
#ENV DISPLAY :0.0

COPY app.sh /

WORKDIR ${JMETER_HOME}

ENTRYPOINT ["/app.sh"]
