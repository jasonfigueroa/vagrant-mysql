# Prerequisites

Vagrant should be installed and setup on host machine.

# Getting Started

This is for creating a Vagrant box with mysql (version 8). The box is set up so it can be accessed from a client from the host machine.

1. Clone repo and cd into working directory
2. Make any necessary changes to bootstap file, such as database name, user, and password
3. run `vagrant up`
4. connect to database `mysql -h127.0.0.1 -P 33060 -udbuser -puserpass`