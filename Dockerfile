	#specify the base image
	FROM centos:7
	#Add tag with label
	LABEL maintainer="Aboard"
	#update our packages
	RUN yum update -y && yum clean all
	RUN yum install httpd -y
	COPY index.html /var/www/html
	#port on which the container would lister
	EXPOSE 80
	#when container starts apache should start
	ENTRYPOINT [ "/usr/sbin/httpd" ]
	#Run container in the backgrund
	CMD [ "-D", "FOREGROUND" ]
