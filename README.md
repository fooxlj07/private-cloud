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
then check on local browser http://localhost:8200/ui

access consul ui
ssh -L 8500:172.16.1.1:8500 root@server01
then check on local browser http://localhost:8500/ui

TODO:
- secret management instead of .env file for root secret during init(used later as well for recovery)
- OpenVPN remote and local
- internal domain name dns record
- proper ca, may use let's encrypt
- loadbalance/reverse proxy
- check with dedibox if can get a domain name without lose my servers
- log and monitory
