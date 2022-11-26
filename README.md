# flask-submit

## Demo
I build it on aws EC2, check this ![website](http://ec2-44-200-56-211.compute-1.amazonaws.com:32239) 
![](https://raw.githubusercontent.com/PANhuihuihuihui/PicBed/main/202211260141285.png)

## Run
### Mac OS M-chip
my env
```text
python = 3.9
macOS Moneterey 12.6
```
for other pythen env check ![requirements-apple.txt](requirements-apple.txt)
1. **start local build**
```bash
source myflask/bin/activate
flask run
```
2. **start with docker build**
I create to docker image for different platform:
- macos 'phjus/myflask'
- CentOS 'phjus/myflask-x86'
```bash
docker run --name myflask -p 8080:5000 -d phjus/myflask 
```
you will see the app on localhost:8080
![](https://raw.githubusercontent.com/PANhuihuihuihui/PicBed/main/202211252343292.png)
### CentOS k8s on AWS EC2
my env
```text
python = 3.9
CentOS 7 
```
I used: 
- one severive:8000 that could balance the load of three pod:5000
- NodePort make it accessable with public internet(the port is random select by k8s)
```bash
kubectl apply -f myflask-apple.yml
#or
kubectl apply -f myflask-x86.yml
```

