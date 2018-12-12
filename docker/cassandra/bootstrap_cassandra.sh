#!/bin/sh

# Create cassandra cluster
echo "Creating Cassandra cluster"
docker-compose -f cassandra_cluster.yaml up -d

# Cassandra check - health
echo "Checking if cassandra is ready"
while ! cqlsh -e 'describe cluster' ; do
    sleep 5
done
echo "Cassandra is ready"

# Bootstrap O&O tables
echo "Bootstrapping test schema and tables"
sleep 180 #give enough time for cassandra cluster to settle
docker-compose -f cassandra_cluster.yaml exec DC1N1 bash -c 'cqlsh -f /cassandra-init.cql'
echo "Bootstrapping test schema and tables completed"
