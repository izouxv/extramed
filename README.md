# Instalação do Rancher

O Rancher deve estar numa máquina isolada. Não pode ficar dentro do Cluster

Rodar o script do arquivo *rancher/rancher.sh*

Setar a senha no Rancher

Registrar o cluster pela interface do Rancher. Nesta parter o Rancher irá gerar um script para rodar nas máquinas
___

# Criar Cluster
## Masters

Instatalar docker e rodar o script nas máquinas:
* kubemaster01: 192.168.90.161
* kubemaster02: 192.168.90.162
* kubemaster03: 192.168.90.163

````sh
curl https://releases.rancher.com/install-docker/19.03.sh | sh
sudo usermod -aG docker administrador
sudo docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run  rancher/rancher-agent:v2.6.4 --server https://192.168.90.220 --token jpjc2tlfzhdxbjnx6cw84jxpmpkw6gm2hm7ccr8spf4pzd75rxhmr2 --ca-checksum 116c6e1cda441b1f4ba9b309627342b99e20c9b0039f6a58115802c60d28f6ae --etcd --controlplane
````
___

## Workers
Instatalar docker e rodar o script nas máquinas:
* kubeworker01: 192.168.90.165
* kubeworker02: 192.168.90.166
* kubeworker03: 192.168.90.167

````sh
curl https://releases.rancher.com/install-docker/19.03.sh | sh
sudo usermod -aG docker administrador
sudo docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run  rancher/rancher-agent:v2.6.4 --server https://192.168.90.220 --token jpjc2tlfzhdxbjnx6cw84jxpmpkw6gm2hm7ccr8spf4pzd75rxhmr2 --ca-checksum 116c6e1cda441b1f4ba9b309627342b99e20c9b0039f6a58115802c60d28f6ae --worker
````
___

# Baixar o projeto

````sh
git clone https://github.com/ralphsbaesso/extramed
````
___

# Instalação Traefic

````sh
kubectl apply -k traefik22/
````
___

# cert-manager

*Não foi instalado*. Vai ser via Helm.
Se o Helm falhar pode utilizar o recurso abaixo.
```
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.7.2/cert-manager.yaml
```

Depois aplicar o manifestos *issuer/manifest.yaml*

