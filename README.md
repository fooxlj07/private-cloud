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

provide VAULT_ADDR and VAULT_TOKEN env

Access vault ui
Enable openvpn client 
http://nomad.my-cluster.internal:8200

Access consul ui
http://nomad.my-cluster.internal:8500

Access nomad UI
http://nomad.my-cluster.internal:4646

TODO:
- be able to deploy on nomad with github ci + use vault for secrets
- secret management instead of .env and root ca of vault file for root secret during init(used later as well for recovery) !!!
- get a proper domain name.

- proper ca, may use let's encrypt
- loadbalance/reverse proxy
- log and monitory
- add log rotation.