# devops-and-whatnot

docker build -t whatnot-api .
docker run -p 5000:5000 whatnot-api

turn off airplay for interference on port 5000 https://developer.apple.com/forums/thread/682332

kubectl and minikube

minikube start
eval $(minikube docker-env) ## needs to be run everytime you open a shell, and needs to be same shell
docker build -t whatnot-api .
kubectl create namespace whatnot-api
kubectl apply -f deployment.yaml
minikube service -n whatnot-api whatnot-api-svc
minikube addons enable ingress
kubectl apply -f ingress.yaml

minikube profile list
minikube delete --profile minikube

gitignore
dockerignore

## Provisioning Infrastructure

Terraform
AWS - ECR, EKS

## CI/CD

Infra --> Terraform + Atlantis + GitHub Actions + AWS
App --> GitHub Actions + AWS
