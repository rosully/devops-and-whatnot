# devops-and-whatnot

docker build -t whatnot .
docker run -p 5000:5000 whatnot

turn off airplay for interference on port 5000 https://developer.apple.com/forums/thread/682332

kubectl and minikube

minikube start
eval $(minikube docker-env) ## needs to be run everytime you open a shell, and needs to be same shell
docker build -t whatnot .
kubectl apply -f deployment.yaml
minikube service whatnot-service

minikube profile list
minikube delete --profile minikube

gitignore
dockerignore
