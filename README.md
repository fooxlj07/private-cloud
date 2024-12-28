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