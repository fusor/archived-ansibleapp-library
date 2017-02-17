FROM ansibleapp/ansibleapp-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.ansibleapp.version"="0.1.0"
LABEL "com.redhat.ansibleapp.spec"=\
"aWQ6IDQyNDBiMzljLTExNmItNDBiOS05Yjc3LTJkMzBlMjI5ZjBkYwpuYW1lOiBhbnNpYmxlYXBw\
L3dvcmRwcmVzcy1hbnNpYmxlYXBwCmRlc2NyaXB0aW9uOiBXb3JkcHJlc3Mgd2ViIHBsYXRmb3Jt\
CmJpbmRhYmxlOiBmYWxzZQphc3luYzogInVuc3VwcG9ydGVkIgpwYXJhbWV0ZXJzOgogIC0gbmFt\
ZTogZGF0YWJhc2VfbmFtZQogICAgZGVzY3JpcHRpb246IERhdGFiYXNlIE5hbWUKICAtIG5hbWU6\
IGRhdGFiYXNlX3VzZXIKICAgIGRlc2NyaXB0aW9uOiBEYXRhYmFzZSBVc2VyCiAgLSBuYW1lOiBk\
YXRhYmFzZV9wYXNzd29yZAogICAgZGVzY3JpcHRpb246IERhdGFiYXNlIFBhc3N3b3JkCiAgLSBu\
YW1lOiByb290X3Bhc3N3b3JkCiAgICBkZXNjcmlwdGlvbjogcm9vdCBwYXNzd29yZCBmb3IgbWFy\
aWFkYgogIC0gbmFtZTogZGF0YWJhc2VfaG9zdAogICAgZGVzY3JpcHRpb246IERhdGFiYXNlIHNl\
cnZpY2UgaG9zdAogICAgZGVmYXVsdDogbWFyaWFkYgo="
ADD ansible /opt/ansible
ADD ansibleapp /opt/ansibleapp

RUN useradd -u 1001 -r -g 0 -M -b /opt/ansibleapp -s /sbin/nologin -c "ansibleapp user" ansibleapp
RUN chown -R 1001:0 /opt/{ansible,ansibleapp}
USER 1001
