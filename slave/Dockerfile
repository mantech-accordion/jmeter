FROM accordion/jmeter-base:latest
MAINTAINER bskim@mantech.co.kr
		
EXPOSE 1099 50000
		
COPY run.sh /run.sh
ENV HTTPURL  jpetstore.example.com
ENV HTTPPORT 80

ENTRYPOINT /run.sh 
