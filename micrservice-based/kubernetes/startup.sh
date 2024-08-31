minikube start --driver=docker
minikube -p minikube docker-env
eval $(minikube -p minikube docker-env)
docker build -t adminservice:latest .
docker build -t customerservice:latest .
docker build -t nginx-proxy:latest -f Dockerfile.nginx .
docker pull  mysql:5.7

kubectl apply -f mysql-pv.yml
kubectl apply -f mysql-pvc.yml
kubectl apply -f mysql-deployment.yml
kubectl apply -f mysql-service.yml

kubectl apply -f adminservice-deployment.yml
kubectl apply -f customerservice-deployment.yml

kubectl apply -f adminservice-service.yml
kubectl apply -f customerservice-service.yml\
kubectl apply -f nginx-deployment.yml
kubectl apply -f nginx-service.yml

minikube service nginx-service

kubectl exec -it mysql-deployment-86d8595fd7-5769r bash

kubectl exec -it mysql-deployment-86d8595fd7-5769r  bash
insert into CUSTOMER values (1, '','test@test.com', 'pass', 'ROLE_ADMIN','admin');


