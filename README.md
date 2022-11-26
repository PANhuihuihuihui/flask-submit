# flask-submit

## Demo
I build it on aws EC2
check this website 
## Run
you have to make sure you have docker and k8s install
local platform:  Mac M-chip, python = 3.9
k8s: CentOS7 
### start local build
```bash
source myflask/bin/activate
flask run
```
### start with docker build
```bash
docker run --name myflask -p 8080:5000 -d phjus/myflask 
```
you will see the app on localhost:8080
### start with k8s
one severive:8000 that could balance the load of three pod:5000
NodePort make it accessable with public internet
```bash
kubectl apply -f myflask.yml
```
