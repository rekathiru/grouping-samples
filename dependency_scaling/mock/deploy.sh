#!/bin/sh 


curl -X POST -H "Content-Type: application/json" -d @'json/autoscale-policy.json' -k -v -u admin:admin https://localhost:9443/api/autoscalingPolicies

curl -X POST -H "Content-Type: application/json" -d @'json/tomcat.json' -k -v -u admin:admin https://localhost:9443/api/cartridges
curl -X POST -H "Content-Type: application/json" -d @'json/php.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

sleep 3

curl -X POST -H "Content-Type: application/json" -d @'json/app_dependency_scaling.json' -k -v -u admin:admin https://localhost:9443/api/applications

sleep 3
curl -X POST -H "Content-Type: application/json" -d@'json/dep_dependency_scaling.json' -k -v -u admin:admin https://localhost:9443/api/applicationDeployments

