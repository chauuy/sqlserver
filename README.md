# sqlserver

This folder contains:

1 - A Kubernetes Deployment file for SQL Server 
- SQL-Server2019-Deployment.yaml

2 - A Dokerfile to deploy SQL Server
- Dockerfile

3 - A K8S Template SQL-Server 2019 :

Add a new Template to deploy SQL Server 2019 in OpenShift "From Catalog".

eval $(crc oc-env)
oc login -u kubeadmin -p XXXXX https://api.crc.testing:6443
oc apply -f  template-SQL-SERVER2019.yml

Available in JSON and YAML
- template-SQL-SERVER2019.yml (In YAML format)
- template-SQL-SERVER2019.json (In JSON format)
