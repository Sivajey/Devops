# Devops

1.CI Plan:

SCM: Github
CI Tool: Jenkins
Repository : DockerHub

Once the developer push the jar file to scm ( Github) , I’m using jenkins to build a docker image and push that to the 
repository (DockerHub)

2.CD Plan:

I am using GCP as a cloud environment, and using GKE to build the k8s cluster and deployments.

we can have two environment in k8s cluster to isolate between each other.

Create a namespace to isolate the environments:

kubectl create -f airports-assembly-ns.yaml
kubectl create -f countries-assembly-ns.yaml

To view the namespaces:

kubectl get ns

Create a deployments:

kubectl create -f countries.yaml -n countries-assembly
kubectl create -f countries-svc.yaml -n countries-assembly

kubectl create -f airports.yaml -n airports-assembly
kubectl create -f airports-svc.yaml -n airports-assembly


to view the deployments:

kubectl get deployments -n countries-assembly
kubectl get deployments -n airports-assembly

To view the services:

kubectl get svc -n airports-assembly
kubectl get svc -n countries-assembly

Currently 
airport-service is running on the version 1.0.1

and using kubernetes deployments we can do rolling update without any service interruption

kubectl edit deployment countries-assembly -n countries-assembly

change the image version to 1.1.0 and save the file.

get the endpoints 

kubectl get svc --all-namespaces

kubectl run busybox --image=busybox -it sh
wget -O- http://endpoint:8080/countries
wget -O- http://endpoint:8080/countries/query
wget -O- http://endpoint:8080/airports
wget -O- http://endpoint:8080/airports/query

or you can open the browser and use the external ip to get the list and do queries.


