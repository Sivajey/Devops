FROM java:8
MAINTAINER Siva
ADD https://s3-eu-west-1.amazonaws.com/devops-assesment/airports-assembly-1.1.0.jar airports-assembly-1.1.0.jar
CMD ["java","-jar","airports-assembly-1.1.0.jar"]
EXPOSE 8000
