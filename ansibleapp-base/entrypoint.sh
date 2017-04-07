#!/bin/bash
ANSIBLEAPP_ACTION=$1
USER_ID=$(id -u)
shift
playbooks=/opt/ansibleapp/actions

if [ ${USER_UID} != ${USER_ID} ]; then
sed "s@${USER_NAME}:x:\${USER_ID}:@${USER_NAME}:x:${USER_ID}:@g" ${APP_ROOT}/etc/passwd.template > /etc/passwd
fi

oc-login.sh

if [[ "$ANSIBLEAPP_ACTION" == "provision" ]]; then
  ansible-playbook $playbooks/provision.yaml $@
elif [[ "$ANSIBLEAPP_ACTION" == "deprovision" ]]; then
  ansible-playbook $playbooks/deprovision.yaml $@
elif [[ "$ANSIBLEAPP_ACTION" == "bind" ]]; then
  ansible-playbook $playbooks/bind.yaml $@
elif [[ "$ANSIBLEAPP_ACTION" == "unbind" ]]; then
  echo "UNBIND NOT IMPLEMENTED" # TODO
fi
