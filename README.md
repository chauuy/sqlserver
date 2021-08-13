# sqlserver on Openshift

This folder contains:

1 - A Kubernetes Deployment file for SQL Server 
- SQL-Server2019-Deployment.yaml
```shell
kubectl -apply SQL-Server2019-Deployment.yaml
```

2 - A Dokerfile to deploy SQL Server
- Dockerfile
```shell
kubectl -apply SQL-Server2019-Deployment.yaml
```

3 - A Openshift Template SQL-Server 2019 ephemeral (without persistent storage)

Add a new Template to deploy SQL Server 2019 in "From Catalog" menu in Openshift GUI.

```shell
eval $(crc oc-env)
oc login -u kubeadmin -p XXXXX https://api.crc.testing:6443
oc apply -f  template-SQL-SERVER2019.yml
```

**Note:** it is possible to modify this template to add persistent storage with a PV (PersistentVolume).

Available in JSON and YAML
- template-SQL-SERVER2019.yml (In YAML format)
- template-SQL-SERVER2019.json (In JSON format)
