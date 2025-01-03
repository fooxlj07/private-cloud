# 1. Local machine config 
Not to expose the ips of my servers on github 
Add following record to /etc/hosts
```
ip_master_node server01
ip_worker_node_1 server02
ip_worker_node_2 server03
```

# Set up env
pipenv install
pipenv shell

`ansible-galaxy collection install -r requirements.yml`
access vault ui
ssh -L 8200:172.16.1.1:8200 root@server01

access consul ui
ssh -L 8500:172.16.1.1:8500 root@server01

TODO:
- dns record
- loadbalance/reverse proxy
- OpenVPN remote and local
- proper ca, may use let's encrypt