pulp-ansibleapp
======================

An AnsibleApp for deploying [Pulp](http://pulpproject.org/).  
Based on mhrivnak's work at https://github.com/mhrivnak/pulp-k8s

## What it does
* Creates certificates and configs as secrets
* Deploys a mongodb and qpidd containers
* Sets up the pulp pvc
* Seeds the mongodb database
* Starts the Pulp containers

## Requirements

## Parameters
  - name: CREATE_PVS, default: false, Whether or not to create hostPath pv's
  - name: NAMESPACE, default: pulp-ansibleapp, Namespace to deploy pulp to
  - name: PULP_PASSWORD, default: 'admin', Password for the pulp admin user.
  - name: PV_BASE_PATH, default: '/opt/k8s', Base path for hostPath pv's if created.

## Running the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/pulp-ansibleapp provision`

## Tearing down the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/pulp-ansibleapp deprovision`
