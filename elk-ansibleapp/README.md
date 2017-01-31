etherpad-ansibleapp
======================

An AnsibleApp for deploying the ELK stack (Elasticsearch, Logstash, Kibana).
Adapted from https://github.com/yatesr/playbook-etherpad

## What it does
* Installs elasticsearch, logstash, and kibana
* Deploys ELK to Openshift

## Requirements
* Must have docker installed and parameters to authenticate against OCP cluster

## Vars and setup
* TODO

## Running the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" fabianvf/elk-ansibleapp provision`
## Tearing down the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" fabianvf/etherpad-ansibleapp deprovision`


TODO:  
    Vars:
     - replicas: number of elasticsearch nodes to deploy
