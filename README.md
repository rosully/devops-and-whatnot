# DevOps (and Whatnot)

## Local Development

```bash
docker build -t whatnot-api .
docker run -p 5000:5000 whatnot-api
```

Note: (Mac users) it may be necessary to turn off AirPlay for interference on port 5000 (https://developer.apple.com/forums/thread/682332)

## GKE Configuration

### Nginx Ingress

#### Installation

```bash
# install helm locally
brew install helm

# add the stable repo to the k8s cluster
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

# create the namespace
kubectl create namespace ingress-nginx

# install ingress-nginx with helm
helm install nginx-ingress-4-0-13 ingress-nginx/ingress-nginx \
     --version 4-0-13 \
     --namespace ingress-nginx \
     -f values.yaml
```

### Deployment, Service, and Ingress Provisioning

```bash
kubectl create namespace whatnot-api
kubectl apply -f deployment.yaml
kubectl apply -f ingress.yaml
```

Upon instantiation, add Ingress IP and hostname "hello-world.info" to /etc/hosts as admin on your local device

## Provisioning Infrastructure

Terraform
AWS - ECR + EKS --> terraform EKS module (not AWS)

## CI/CD

Infra --> Terraform + Atlantis + GitHub Actions + AWS
App --> GitHub Actions + AWS
