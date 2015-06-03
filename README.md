# Mongo Replica Set Vagrant

Install MongoDB 3 Replica Set with one command. Requirements:

  - [Vagrant](http://www.vagrantup.com/downloads)
  - [Virtual Box](https://www.virtualbox.org/wiki/Downloads)

### Installation

```sh
$ git clone https://github.com/gasparms/mongo-rs-vagrant.git
$ cd mongo-rs-vagrant
$ vagrant up
```

### Connect to Mongo

After a few minutes, replica set will be available. F

```sh
$ mongo --host set0/192.168.33.11:27017,192.168.33.12:27017,192.168.33.13:27017
```
