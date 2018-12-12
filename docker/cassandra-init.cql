CREATE KEYSPACE IF NOT EXISTS test WITH replication = {
    'class': 'NetworkTopologyStrategy', 
    'datacenter1': '3'
}  AND durable_writes = true;

CREATE TABLE IF NOT EXISTS test.user (
    username text,
    first_name text,
    last_name text,
    age int,
    country text,
    PRIMARY KEY (username, country)
);
