foreman-ansibleapp
======================

An AnsibleApp for deploying [Foreman](http://theforeman.org/).  

## What it does
* Deploys a Foreman installation to the (optionally) specified namespace. The installation consists of 1 postgresql and 1 foreman container.

## Requirements

## Parameters
* DB_ENCRYPTION_KEY, default is randomly generated, DB Encryption key
* FOREMAN_ADMIN_PASSWORD, default 'changeme', Foreman admin password.
* NAMESPACE: Optional, default 'foreman-ansibleapp', Namespace to deploy the cluster in.
* POSTGRESQL_DATABASE, default 'foreman', Postgresql database name.
* POSTGRESQL_PASSWORD, default 'admin', Postgresql database password.
* POSTGRESQL_USER, default 'admin', Postgresql database username.
* OPENSHIFT_TARTET: Required, target openshift deployment
* OPENSHIFT_USER: Required, openshift user to login as
* OPENSHIFT_PASS: Required, openshift users password

## Running the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/foreman-ansibleapp provision`

## Tearing down the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/foreman-ansibleapp deprovision`
