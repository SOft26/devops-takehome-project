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

kubectl apply -f argocd/application.yaml
kubectl port-forward svc/argocd-server -n argocd 8081:443
https://localhost:8081
```

![Project Screenshot](https://github.com/user-attachments/assets/df814a7a-d0b3-4ca3-aa5d-7c1a936319c0)
