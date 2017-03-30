FROM ansibleapp/ansibleapp-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.ansibleapp.version"="0.1.0"
LABEL "com.redhat.ansibleapp.spec"=\
"aWQ6IGRjODVkZWIzLWI1MjQtNGE1ZC1hOTIwLWMxYWRhMWJlNzFmYQpuYW1lOiBhbnNpYmxlYXBw\
L3B1bHAtYW5zaWJsZWFwcApkZXNjcmlwdGlvbjogUHVscCBhbnNpYmxlYXBwIGltcGxlbWVudGF0\
aW9uCmJpbmRhYmxlOiBmYWxzZQphc3luYzogb3B0aW9uYWwKcGFyYW1ldGVyczoKICAtIG5hbWU6\
IGRhdGFiYXNlX3Bhc3MKICAgIGRlc2NyaXB0aW9uOiBQYXNzd29yZCBmb3IgdGhlIGRhdGFiYXNl\
IHVzZXIKICAgIHR5cGU6IHN0cmluZwogICAgZGVmYXVsdDogYWRtaW4KICAtIG5hbWU6IGRhdGFi\
YXNlX3VzZXIKICAgIGRlc2NyaXB0aW9uOiBEYXRhYmFzZSB1c2VyCiAgICB0eXBlOiBzdHJpbmcK\
ICAgIGRlZmF1bHQ6IGFkbWluCiAgLSBuYW1lOiBuYW1lc3BhY2UKICAgIGRlc2NyaXB0aW9uOiBO\
YW1lc3BhY2UgdG8gZGVwbG95IHRoZSBjbHVzdGVyIHRvCiAgICB0eXBlOiBzdHJpbmcKICAgIGRl\
ZmF1bHQ6IG1vbmdvZGItYW5zaWJsZWFwcAogIC0gbmFtZTogcHVscF9wYXNzd29yZAogICAgZGVz\
Y3JpcHRpb246IERhdGFiYXNlIHVzZXIKICAgIHR5cGU6IHN0cmluZwogICAgZGVmYXVsdDogYWRt\
aW4K"
ADD ansible /opt/ansible
ADD ansibleapp /opt/ansibleapp
ADD pulp-k8s /pulp-k8s

RUN yum -y install openssl
RUN useradd -u 1001 -r -g 0 -M -b /opt/ansibleapp -s /sbin/nologin -c "ansibleapp user" ansibleapp
RUN chown -R 1001:0 /opt/{ansible,ansibleapp}
USER 1001
