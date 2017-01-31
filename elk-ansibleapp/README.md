elk-ansibleapp
======================

An AnsibleApp for deploying the ELK stack (Elasticsearch, Logstash, Kibana), taken from the [ElasticStack_apache example](https://github.com/elastic/examples/tree/master/ElasticStack_apache).

## What it does
* Installs elasticsearch, logstash, and kibana
* Populates Elasticsearch with sample Apache data
* Deploys ELK to Openshift

## Requirements
* Must have docker installed and parameters to authenticate against OCP cluster

## Vars and setup
* TODO

## Running the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/elk-ansibleapp provision`
## Tearing down the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/elk-ansibleapp deprovision`

## Viewing the demo

* Access Kibana by opening (in a web browser) the route listed for the kibana service when you run `oc get routes`
* Connect Kibana to the `apache_elastic_example` index in Elasticsearch
    * Click the **Management** tab >> **Index Patterns** tab >> **Create New**. Specify `apache_elastic_example` as the index pattern name and click **Create** to define the index pattern. (Leave the **Use event times to create index names** box unchecked and use @timestamp as the Time Field)
* Load sample dashboard into Kibana
    * Download and save the [Sample Apache Dashboard](https://raw.githubusercontent.com/elastic/examples/master/ElasticStack_apache/apache_kibana.json)
    * Click the **Management** tab >> **Saved Objects** tab >> **Import**, and select the file where you just saved the Sample Apache Dashboard
* Open dashboard
    * Click on **Dashboard** tab and open `Sample Dashboard for Apache Logs` dashboard

TODO:  
    Vars:
     - replicas: number of elasticsearch nodes to deploy
