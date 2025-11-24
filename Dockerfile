#############################
# CVAT Server Image
#############################
FROM cvat/server:v2.49.0 AS cvat-server




#############################
# CVAT UI Image
#############################
FROM cvat/ui:v2.49.0 AS cvat-ui




#############################
# Vector Image
#############################
FROM timberio/vector:0.26.0-alpine AS cvat-vector



#############################
# Clickhouse Image
#############################
FROM clickhouse/clickhouse-server:23.11-alpine AS cvat-clickhouse

#############################
# Grafana Image
#############################
FROM grafana/grafana-oss:10.1.2 AS cvat-grafana

#############################
# OpenPolicyAgent Image
#############################
FROM openpolicyagent/opa:0.63.0 AS cvat-opa

#############################
# Postgres Image
#############################
FROM postgres:15-alpine AS cvat-postgres

#############################
# Redis In Memory Image
#############################
FROM redis:7.2.11-alpine AS cvat-redis-inmem

#############################
# Redis Ondisk Image
#############################
FROM apache/kvrocks:2.12.1 AS cvat-redis-ondisk

#############################
# Traefik Image
#############################
FROM traefik:v3.3 AS traefik


