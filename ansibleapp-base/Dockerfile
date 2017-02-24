FROM centos:7
MAINTAINER Erik Nelson "ernelson@redhat.com"

RUN yum -y update \
 && yum -y install epel-release centos-release-openshift-origin \
 && yum -y install origin origin-clients net-tools bind-utils ansible \
 && yum clean all

RUN echo "localhost ansible_connection=local" >> /etc/ansible/hosts
RUN sed -i 's|#roles_path.*$|roles_path = /opt/ansible/roles|' /etc/ansible/ansible.cfg

RUN mkdir /opt/ansibleapp

COPY oc-login.sh /usr/bin
COPY entrypoint.sh /usr/bin

ENTRYPOINT ["entrypoint.sh"]
