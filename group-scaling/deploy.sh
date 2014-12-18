#!/bin/sh 

# Create autoscale policy
curl -X POST -H "Content-Type: application/json" -d @'autoscale-policy-c1.json' -k -v -u admin:admin https://localhost:9443/api/autoscalingPolicies
curl -X POST -H "Content-Type: application/json" -d @'autoscale-policy-c2.json' -k -v -u admin:admin https://localhost:9443/api/autoscalingPolicies
curl -X POST -H "Content-Type: application/json" -d @'autoscale-policy-c3.json' -k -v -u admin:admin https://localhost:9443/api/autoscalingPolicies
curl -X POST -H "Content-Type: application/json" -d @'autoscale-policy-c4.json' -k -v -u admin:admin https://localhost:9443/api/autoscalingPolicies

# Deploy c3 cartridge
curl -X POST -H "Content-Type: application/json" -d @'c3.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

# Deploy c4 cartridge
curl -X POST -H "Content-Type: application/json" -d @'c4.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

# Deploy c1 cartride
curl -X POST -H "Content-Type: application/json" -d @'c1.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

# Deploy c2 cartride
curl -X POST -H "Content-Type: application/json" -d @'c2.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

# Deploy group
curl -X POST -H "Content-Type: application/json" -d @'group1.json' -k -v -u admin:admin https://localhost:9443/api/groups

# GET group
#curl -X GET -H "Content-Type: application/json" -k -v -u admin:admin https://localhost:9443/api/groups/group6


sleep 3
# Create application
curl -X POST -H "Content-Type: application/json" -d @'composite_application.json' -k -v -u admin:admin https://localhost:9443/api/applications

sleep 3
# GET application
# curl -X GET -H "Content-Type: application/json" -k -v -u admin:admin https://localhost:9443/api/applications/appscaling

# Deploy application
#curl -X POST -H "Content-Type: application/json" -d@'app_deployment_policy.json' -k -v -u admin:admin https://localhost:9443/api/application/appscaling/deploy


# Undeploy application
#curl -X DELETE -H "Content-Type: application/json" -k -v -u admin:admin https://localhost:9443/api/applicationDeployments/appscaling

# Delete application
#curl -X DELETE -H "Content-Type: application/json" -k -v -u admin:admin https://localhost:9443/api/applications/appscaling

