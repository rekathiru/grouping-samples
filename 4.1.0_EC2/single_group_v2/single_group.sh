#!/bin/sh 

curl -X POST -H "Content-Type: application/json" -d @'grouping/autoscale-policy.json' -k -v -u admin:admin https://localhost:9443/api/autoscalingPolicies

curl -X POST -H "Content-Type: application/json" -d @'grouping/tomcat.json' -k -v -u admin:admin https://localhost:9443/api/cartridges
curl -X POST -H "Content-Type: application/json" -d @'grouping/tomcat1.json' -k -v -u admin:admin https://localhost:9443/api/cartridges
curl -X POST -H "Content-Type: application/json" -d @'grouping/tomcat2.json' -k -v -u admin:admin https://localhost:9443/api/cartridges
curl -X POST -H "Content-Type: application/json" -d @'grouping/group6c.json' -k -v -u admin:admin https://localhost:9443/api/groups

sleep 3

curl -X POST -H "Content-Type: application/json" -d @'grouping/app_single_group.json' -k -v -u admin:admin https://localhost:9443/api/applications

sleep 3

curl -X POST -H "Content-Type: application/json" -d@'grouping/dep_single_group.json' -k -v -u admin:admin https://localhost:9443/api/applications/app_group_v2/deploy

