#!/bin/sh 

curl -X POST -H "Content-Type: application/json" -d @'json/autoscale-policy.json' -k -v -u admin:admin https://localhost:9443/api/autoscalingPolicies

curl -X POST -H "Content-Type: application/json" -d @'json/tomcat.json' -k -v -u admin:admin https://localhost:9443/api/cartridges
curl -X POST -H "Content-Type: application/json" -d @'json/tomcat1.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

sleep 2

curl -X POST -H "Content-Type: application/json" -d @'json/app_dependency_scaling.json' -k -v -u admin:admin https://localhost:9443/api/applications

sleep 2
curl -X POST -H "Content-Type: application/json" -d@'json/dep_dependency_scaling.json' -k -v -u admin:admin https://localhost:9443/api/applications/app_group_v1/deploy

