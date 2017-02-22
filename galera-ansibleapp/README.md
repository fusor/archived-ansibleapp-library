galera-ansibleapp
======================

An AnsibleApp for deploying [a mariadb multi-master galera cluster](https://mariadb.com/kb/en/mariadb/getting-started-with-mariadb-galera-cluster/).  
Adapted in from Chris Houseknecht's and Ryan Hallisey's work (on separate projects.)

## What it does
* Bootstraps a mariadb database
* Deploys a three node galera cluster

## Requirements
* Must have docker and oc clients installed 
* Must provide a token as a parameter for the oc client to authenticate to OCP so we can boostrap the db

## Parameters
* CLUSTER_SIZE: Optional, default 3, Size of the cluster to deploy
* MARIADB_DATABASE: Optional, default 'mysql', Name for database to create
* MARIADB_USERNAME: Optional, default  'admin', Username for database created
* MARIADB_PASSWORD: Optional, default  'foo', Password for database created
* MARIADB_ROOT_PASSWORD: Optional, default 'sesame', Root password for mariadb
* NAMESPACE: Optional, default 'galera', Namespace to deploy the cluster in
* OPENSHIFT_TARTET: Required, target openshift deployment
* OPENSHIFT_USER: Required, openshift user to login as
* OPENSHIFT_PASS: Required, openshift users password

## Running the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/galera-ansibleapp provision`

## Tearing down the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/galera-ansibleapp deprovision`

## Example: deploying a four node cluster in the mariadb namespace:
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" -e "NAMEPSACE=mariadb" -e "CLUSTER_SIZE=4" ansibleapp/galera-ansibleapp provision`
