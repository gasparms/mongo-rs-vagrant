hostname "mongo2"
echo "mongo2" > /etc/hostname
echo "192.168.33.12 mongo2" >> /etc/hosts
echo "192.168.33.11 mongo1" >> /etc/hosts
echo "192.168.33.13 mongo3" >> /etc/hosts

# get mongodb
cd /opt/
wget -q https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1404-3.0.3.tgz 2>&1 >/dev/null
tar -xvf mongodb-linux-x86_64-ubuntu1404-3.0.3.tgz
cp -f /vagrant/provisioning/mongodb.conf.2 /etc/mongodb.conf
sleep 10

ln -s /opt/mongodb-linux-x86_64-ubuntu1404-3.0.3 mongo

mkdir -p /var/lib/mongodb
mkdir -p /var/log/mongodb

/opt/mongo/bin/mongod -f /etc/mongodb.conf &
