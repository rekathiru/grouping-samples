#!/bin/sh 


curl -X POST -H "Content-Type: application/json" -d @'grouping/autoscale-policy.json' -k -v -u admin:admin https://localhost:9443/api/autoscalingPolicies

curl -X POST -H "Content-Type: application/json" -d @'grouping/tomcat.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

sleep 5

curl -X POST -H "Content-Type: application/json" -d @'grouping/m1_single_subsciption_app.json' -k -v -u admin:admin https://localhost:9443/api/applications


sleep 5 
curl -X POST -H "Content-Type: application/json" -d@'grouping/deployment-policy.json' -k -v -u admin:admin https://localhost:9443/api/applicationDeployments

#
#remove run time
#curl -X DELETE -H "Content-Type: application/json"  -k -v -u admin:admin https://localhost:9443/api/applications/test_app_os4

