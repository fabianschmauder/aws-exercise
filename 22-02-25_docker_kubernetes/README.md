# Exercise 25.02.22 

Exercise to learn the Basics about Docker and Kubernetes

We will build a Docker Image and run it on kubernetes

### 1. Setup webapp
1. We will create a fancy webapp

### 2. Build a docker image
1. Create a docker file
1. Build the docker Image
1. Run the docker image on your local machine

### 3. publish docker image
1. Create a Account at docker hub
1. cerate new project
1. setup credentials
1. upload container

### 4. run on kubernetes
1. Update the webapp.yml 
1. start your local kubernetes cluster
1. use kubectl to run you app
``kubectl create -f ./webapp.yml``
1. use ```kubectl get deployments``` to check if your deployment was successfull
1. use ```kubectl describe deployments``` to show your deployment details
1. Update your deployment with ``kubectl apply -f webapp.yml `` to use 2 pods
1. Update your service use a different port