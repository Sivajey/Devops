FROM java:8
MAINTAINER Siva
ADD https://s3-eu-west-1.amazonaws.com/devops-assesment/airports-assembly-1.0.1.jar airports-assembly-1.0.1.jar
CMD ["java","-jar","airports-assembly-1.0.1.jar"]
EXPOSE 8000
