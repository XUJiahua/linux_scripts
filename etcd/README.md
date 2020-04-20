### Prepare 3 nodes

|Server   |IP   |
|---|---|
|etcd01   |192.168.99.100   |
|etcd02   |192.168.99.101   |
|etcd03   |192.168.99.102   |

### Provision

Install etcd/etcdctl binary.

```
bash download.sh
```

### Setup etcd Cluster

on etcd01

```
bash etcd01.sh
```

on etcd02

```
bash etcd02.sh
```

on etcd03

```
bash etcd03.sh
```


### Virtual Machines Setup

```
$ docker-machine create etcd01
$ docker-machine create etcd02
$ docker-machine create etcd03

$ docker-machine ls
NAME     ACTIVE   DRIVER       STATE     URL                         SWARM   DOCKER     ERRORS
etcd01   -        virtualbox   Running   tcp://192.168.99.100:2376           v19.03.5
etcd02   -        virtualbox   Running   tcp://192.168.99.101:2376           v19.03.5
etcd03   -        virtualbox   Running   tcp://192.168.99.102:2376           v19.03.5
```

reference:

1. https://github.com/etcd-io/etcd/releases/
2. https://etcd.io/docs/v3.4.0/op-guide/clustering/#static
