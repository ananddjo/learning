# Cassandra three node dev cluster on docker

## Assumptions:

1. The user is aware of docker and docker-compose functionality. If not please do some readups on docker and docker compose
2. Docker is installed on mac / windows and from commandline docker --help and docker-compose --help commands work.

## Usage

### Step 1

1. Execute script command ```$./bootstap_cassandra.sh``` to create 3 node cassandra cluster. If the script is not executable, make it executable by running command ```$ chmod 777 bootstrap_cassandra.sh```
2. This indicated the clusters are created with test data schema. We will validate the health of cluster in next step.

### Step 2

1. Manage cluster by logging in to ```http://localhost:9000``` and connect to local docker docker instance. It may first time ask you to setup password for admin privileges.
2. Use this tool to manage the cluster and resources. Even you can use this cluster to login to docker instances.
