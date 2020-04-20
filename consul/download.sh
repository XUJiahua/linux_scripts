cd /tmp
CONSUL_VERSION="1.2.0"

curl --silent --remote-name https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip

unzip consul_${CONSUL_VERSION}_linux_amd64.zip
sudo chown root:root consul
sudo mv consul /usr/local/bin/
consul --version

consul -autocomplete-install
complete -C /usr/local/bin/consul consul

# sudo useradd --system --home /etc/consul.d --shell /bin/false consul
sudo adduser --system --home /etc/consul.d --shell /bin/false consul
...

sudo mkdir --parents /opt/consul
sudo chown --recursive consul:consul /opt/consul
