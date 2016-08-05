#https://dzone.com/articles/set-up-a-springdata-project-with-apache-cassandra

CREATE KEYSPACE example WITH replication = {'class': 'NetworkTopologyStrategy', 'datacenter1': '2'}  AND durable_writes = true;
CREATE TABLE IF NOT EXISTS example.greetings (
    user text,
    id timeuuid,
    greet text,
    creation_date timestamp,
    PRIMARY KEY (user, id)
) WITH CLUSTERING ORDER BY (id DESC);