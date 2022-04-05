## Cert Manager

Usando helm para instalar o cert-manager [https://cert-manager.io/docs/installation/helm/]

```
$ helm repo add jetstack https://charts.jetstack.io
$ helm repo update
$ helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.7.2 \
  --set installCRDs=true
$ kubectl apply -f letsencrypt-prod.yaml
```
