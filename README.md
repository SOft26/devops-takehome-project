# DevOps Assessment

## Prerequisites
Docker, kubectl, k3d, Terraform, and Git installed locally.

## Start the Cluster
```bash
k3d cluster create devops-assessment

cd terraform
terraform init
terraform apply

kubectl apply -f k8s/
kubectl port-forward svc/hello-service 9090:80 -n apps

curl localhost:9090
curl localhost:9090/health

https://localhost:8081