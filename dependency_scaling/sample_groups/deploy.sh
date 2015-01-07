#!/bin/sh 


curl -X POST -H "Content-Type: application/json" -d @'json/autoscale-policy.json' -k -v -u admin:admin https://localhost:9448/api/autoscalingPolicies

curl -X POST -H "Content-Type: application/json" -d @'json/tomcat.json' -k -v -u admin:admin https://localhost:9448/api/cartridges
curl -X POST -H "Content-Type: application/json" -d @'json/esb.json' -k -v -u admin:admin https://localhost:9448/api/cartridges
curl -X POST -H "Content-Type: application/json" -d @'json/php.json' -k -v -u admin:admin https://localhost:9448/api/cartridges
curl -X POST -H "Content-Type: application/json" -d @'json/group6c.json' -k -v -u admin:admin https://localhost:9448/api/groups

sleep 3

curl -X POST -H "Content-Type: application/json" -d @'json/app_single_group.json' -k -v -u admin:admin https://localhost:9448/api/applications

sleep 3

curl -X POST -H "Content-Type: application/json" -d@'json/dep_single_group.json' -k -v -u admin:admin https://localhost:9448/api/applications/app_group_v2/deploy

