# Instalação do Rancher

O Rancher deve estar numa máquina isolada. Não pode ficar dentro do Cluster

Rodar o script do arquivo *rancher/rancher.sh*

Setar a senha no Rancher

Criar o cluster pela interface do Rancher

# Baixar o projeto

````sh
git clone https://github.com/ralphsbaesso/extramed
````

# Instalação Traefic

````sh
kubectl apply -k traefik22/

````

# Instalação Argo CD

````sh
kubectl create namespace argocd
kubectl apply -k argo-cd

````

# Obvervações

## Ingress
Traefik rodando, mas parece que a máquina *haproxy: 192.168.90.221* não está redirecinando.

## Argo CD
deployment *argocd-redis-ha-haproxy* pede 3 pode modificado para 1

deployment *argocd-repo-server* pede 2 pode modificado para 1

deployment *argocd-server* pede 2 pode modificado para 1

Porque quando eu subi só tinha 1 nó de Worker. Modificado pela interface do Rancher.





