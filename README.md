# SQL-Server Linux container on Openshift

This folder contains:

1 - A Kubernetes Deployment file for SQL Server 
- SQL-Server2019-Deployment.yaml
```shell
eval $(crc oc-env)
oc login -u developer -p developer https://api.crc.testing:6443
oc -apply SQL-Server2019-Deployment.yaml
```

2 - A Dokerfile to deploy SQL Server
- Dockerfile
```shell
eval $(crc oc-env)
oc login -u developer -p developer https://api.crc.testing:6443
oc new-app https://github.com/chauuy/sqlserver.git --strategy=docker
oc logs -f buildconfig/sqlserver
oc expose svc/sqlserver
```

3 - A Openshift Template SQL-Server 2019 ephemeral (without persistent storage)

Add a new Template to deploy SQL Server 2019 in "From Catalog" menu in Openshift Developer's GUI.

```shell
eval $(crc oc-env)
oc login -u kubeadmin -p XXXXX https://api.crc.testing:6443
oc apply -f  template-SQL-SERVER2019.yml
```

**Note:** it is possible to modify this template to add persistent storage with a config of a PVC (PersistentVolumeClaim) in a PV (PersistentVolume).

Available in JSON and YAML
- template-SQL-SERVER2019.yml (In YAML format)
- template-SQL-SERVER2019.json (In JSON format)

----

Useful Link to MSSQL Tools:

https://docs.microsoft.com/en-us/sql/tools/overview-sql-tools?view=sql-server-ver15
