#!/bin/sh 

# Deploy autoscale policy
curl -X POST -H "Content-Type: application/json" -d @'autoscale-policy.json' -k -v -u admin:admin https://localhost:9443/api/autoscalePolicies

# Deploy tomcat cartridge
curl -X POST -H "Content-Type: application/json" -d @'tomcat.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

# Deploy tomcat1 cartride
curl -X POST -H "Content-Type: application/json" -d @'tomcat1.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

# Deploy tomcat2 cartride
curl -X POST -H "Content-Type: application/json" -d @'tomcat2.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

# Deploy group
curl -X POST -H "Content-Type: application/json" -d @'group6c.json' -k -v -u admin:admin https://localhost:9443/api/groups

# GET group
#curl -X GET -H "Content-Type: application/json" -k -v -u admin:admin https://localhost:9443/api/groups/group6c


sleep 5
# Deploy application
curl -X POST -H "Content-Type: application/json" -d @'application_definition.json' -k -v -u admin:admin https://localhost:9443/api/applications

sleep 5
# GET application
# curl -X GET -H "Content-Type: application/json" -k -v -u admin:admin https://localhost:9443/api/applications/test_app_yyyyy

# Deploy deployment policy
curl -X POST -H "Content-Type: application/json" -d@'deployment-policy.json' -k -v -u admin:admin https://localhost:9443/api/deploymentPolicies

