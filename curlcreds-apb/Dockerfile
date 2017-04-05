FROM ansibleapp/ansibleapp-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.ansibleapp.version"="0.1.0"
LABEL "com.redhat.ansibleapp.spec"=\
"aWQ6IDg0ZTgxNzNlLTVjZWQtNDQ4OS05YjRkLWFhYzdlNzc5YzQ3ZQpuYW1lOiBhbnNpYmxlcGxh\
eWJvb2tidW5kbGUvY3VybGNyZWRzLWFwYgpkZXNjcmlwdGlvbjogY3VybCBtb2NrIGNyZWRlbnRp\
YWxzIGZyb20gYSB1cmwgYW5kIHJldHVybiB0aGVtCmJpbmRhYmxlOiB0cnVlCmFzeW5jOiBvcHRp\
b25hbApwYXJhbWV0ZXJzOgogIC0gbmFtZTogdXJsIAogICAgZGVzY3JpcHRpb246IHVybCB0byBw\
dWxsIG1vY2sgY3JlZGVudGlhbHMgZnJvbQogICAgdHlwZTogc3RyaW5nCg=="
ADD ansible /opt/ansible
ADD ansibleapp /opt/ansibleapp

RUN useradd -u 1001 -r -g 0 -M -b /opt/ansibleapp -s /sbin/nologin -c "ansibleapp user" ansibleapp
RUN chown -R 1001:0 /opt/{ansible,ansibleapp}
USER 1001
