# Wordpress-ansibleapp

- A Wordpress-Mariadb ansibleapp example built from ansible-container-examples.
- Creates a Mariadb container and a Wordpress container.
- Demonstrates deployment to Kubernetes and OpenShift.
- Taken from chouseknecht's contribution to https://github.com/ansible/ansible-container-examples.git

main.yml:

```
-  hosts: db
   vars:
     - wp_mysql_db: wordpress
     - wp_mysql_user: wordpress
     - wp_mysql_password: password
```
```
-  hosts: wordpress
   vars:
     - wp_mysql_db: wordpress
     - wp_mysql_user: wordpress
     - wp_mysql_password: password

```
We can change the user and database by editing the main.yml file.

main.yml
```
-  hosts: db
   vars:
     - wp_mysql_db: < database name >
     - wp_mysql_user: < user name >
     - wp_mysql_password: < password >
```

```
-  hosts: wordpress
   vars:
     - wp_mysql_db: < database name >
     - wp_mysql_user: < user name >
     - wp_mysql_password: < password >
```

Build Images.
-----------------
```
$ cd example/wordpress-example
$ ansible-container build
```

## Run the Container.

```
$ ansible-container run

```

## Push images to cloud.

```
$ docker login
$ ansible-container push

```

## Deploy to OpenShift.

```
$ ansible-container shipit openshift --save-config

Images will be pulled from procrypto
Attaching to ansible_ansible-container_1
Cleaning up Ansible Container builder...
Role wordpress created.

```

## Running Wordpress on Openshift

```
$ docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/wordpress-ansibleapp provision

```

## Destroying Wordpress on Openshift

```
$ docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_USER=<user>" -e "OPENSHIFT_PASS=<password>" ansibleapp/wordpress-ansibleapp deprovision
```

