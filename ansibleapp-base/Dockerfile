FROM centos:7
MAINTAINER Erik Nelson "ernelson@redhat.com"

RUN yum -y update \
 && yum -y install epel-release centos-release-openshift-origin \
 && yum -y install origin origin-clients net-tools bind-utils ansible \
 && yum clean all

RUN echo "localhost ansible_connection=local" >> /etc/ansible/hosts
RUN sed -i 's|#roles_path.*$|roles_path = /opt/ansible/roles|' /etc/ansible/ansible.cfg

COPY user_setup /tmp/

ENV APP_ROOT=/opt/ansibleapp \
    USER_NAME=ansibleapp \
    USER_UID=1001

RUN mkdir -p ${APP_ROOT} ${APP_ROOT}/etc /.kube /.ansible && \
    chmod -R ug+x ${APP_ROOT} ${APP_ROOT}/etc /tmp/user_setup && \
    chmod -R g+rw /.kube /.ansible && \
    /tmp/user_setup

COPY oc-login.sh /usr/bin
COPY entrypoint.sh /usr/bin

USER ${USER_UID}
RUN sed "s@${USER_NAME}:x:${USER_UID}:@${USER_NAME}:x:\${USER_ID}:@g" /etc/passwd > ${APP_ROOT}/etc/passwd.template
USER root
RUN userdel ${USER_NAME} 

ENTRYPOINT ["entrypoint.sh"]
