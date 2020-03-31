
```
wget -O download.sh https://raw.githubusercontent.com/XUJiahua/linux_scripts/master/etcd/download.sh && \
  bash download.sh && \
  sudo cp /tmp/etcd-download-test/etcd* /usr/bin/
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
