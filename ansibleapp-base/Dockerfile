FROM centos:7
MAINTAINER Erik Nelson "ernelson@redhat.com"

RUN yum install -y wget
RUN wget -O /tmp/oc.tar.gz "https://github.com/openshift/origin/releases/download/v1.3.2/openshift-origin-client-tools-v1.3.2-ac1d579-linux-64bit.tar.gz"
RUN cd /tmp && tar zvxf ./oc.tar.gz -C /usr/bin --strip-components=1

RUN yum install -y net-tools bind-utils wget epel-release
RUN yum install -y ansible
RUN echo "localhost ansible_connection=local" >> /etc/ansible/hosts
RUN sed -i 's|#roles_path.*$|roles_path = /opt/ansible/roles|' /etc/ansible/ansible.cfg

RUN mkdir /opt/ansibleapp

COPY oc-login.sh /usr/bin
COPY entrypoint.sh /usr/bin

ENTRYPOINT ["entrypoint.sh"]
