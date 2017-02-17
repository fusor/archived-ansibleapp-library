etherpad-ansibleapp
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
* TOKEN: Required, token to use with oc client. For bootstrap until a better way is developed
* MARIADB_DATABASE: Optional, default 'mysql', Name for database to create
* MARIADB_USERNAME: Optional, default  'admin', Username for database created
* MARIADB_PASSWORD: Optional, default  'foo', Password for database created
* MARIADB_ROOT_PASSWORD: Optional, default 'sesame', Root password for mariadb

## Running the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" -e "TOKEN=<token>" ansibleapp/galera-ansibleapp provision`
## Tearing down the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/galera-ansibleapp deprovision`
