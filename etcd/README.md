
```
wget -O download.sh https://raw.githubusercontent.com/XUJiahua/linux_scripts/master/etcd/download.sh && \
  bash download.sh && \
  sudo cp /tmp/etcd-download-test/etcd* /usr/bin/
```

etcd01 192.168.99.105
etcd02 192.168.99.106
etcd03 192.168.99.107

```
etcd --name infra0 --initial-advertise-peer-urls http://192.168.99.105:2380 \
  --listen-peer-urls http://192.168.99.105:2380 \
  --listen-client-urls http://192.168.99.105:2379,http://127.0.0.1:2379 \
  --advertise-client-urls http://192.168.99.105:2379 \
  --initial-cluster-token etcd-cluster-1 \
  --initial-cluster infra0=http://192.168.99.105:2380,infra1=http://192.168.99.106:2380,infra2=http://192.168.99.107:2380 \
  --initial-cluster-state new

etcd --name infra1 --initial-advertise-peer-urls http://192.168.99.106:2380 \
  --listen-peer-urls http://192.168.99.106:2380 \
  --listen-client-urls http://192.168.99.106:2379,http://127.0.0.1:2379 \
  --advertise-client-urls http://192.168.99.106:2379 \
  --initial-cluster-token etcd-cluster-1 \
  --initial-cluster infra0=http://192.168.99.105:2380,infra1=http://192.168.99.106:2380,infra2=http://192.168.99.107:2380 \
  --initial-cluster-state new

etcd --name infra2 --initial-advertise-peer-urls http://192.168.99.107:2380 \
  --listen-peer-urls http://192.168.99.107:2380 \
  --listen-client-urls http://192.168.99.107:2379,http://127.0.0.1:2379 \
  --advertise-client-urls http://192.168.99.107:2379 \
  --initial-cluster-token etcd-cluster-1 \
  --initial-cluster infra0=http://192.168.99.105:2380,infra1=http://192.168.99.106:2380,infra2=http://192.168.99.107:2380 \
  --initial-cluster-state new
```

issue:

raw.githubusercontent.com 被墙。

```
docker-machine scp /usr/bin/etcd etcd01:/tmp
docker-machine scp /usr/bin/etcdctl etcd01:/tmp

docker-machine scp /usr/bin/etcd etcd02:/tmp
docker-machine scp /usr/bin/etcdctl etcd02:/tmp

docker-machine scp /usr/bin/etcd etcd03:/tmp
docker-machine scp /usr/bin/etcdctl etcd03:/tmp
```

```
sudo cp /tmp/etcd* /usr/bin
```

reference:

https://github.com/etcd-io/etcd/releases/


https://etcd.io/docs/v3.4.0/op-guide/clustering/#static
