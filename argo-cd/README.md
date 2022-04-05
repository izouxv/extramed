## ArgoCD

Ref: [https://www.arthurkoziel.com/setting-up-argocd-with-helm/]

```shell
$ helm repo add argo-cd https://argoproj.github.io/argo-helm
$ helm dep update .
$ helm install argo-cd charts/argo-cd-4.5.0.tgz
$ kubectl apply -f ingress/
```

Para obter a senha:

```shell
$ kubectl -n default get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```
