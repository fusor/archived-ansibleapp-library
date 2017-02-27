mongodb-ansibleapp
======================

An AnsibleApp for deploying [MongoDB](https://www.mongodb.com/).  

## What it does
* Deploys a MongoDB instance, sets up an admin user, and runs with auth enabled.

## Requirements

## Parameters
* DATABASE_PASS, default 'admin', Password for the database user.
* DATABASE_USER, default 'admin', User for database access.
* NAMESPACE: default 'mongodb-ansibleapp', Namespace to deploy the cluster in.

## Running the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/mongodb-ansibleapp provision`

## Tearing down the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/mongodb-ansibleapp deprovision`
