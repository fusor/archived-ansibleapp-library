FROM ansibleapp/ansibleapp-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.ansibleapp.version"="0.1.0"
LABEL "com.redhat.ansibleapp.spec"=\
"aWQ6IDcwZWJkOGEzLTI3ZDktNGFkYy1iM2QzLWMxYzQxYzYwYWY1NgpuYW1lOiBhbnNpYmxlYXBw\
L21vbmdvZGItYW5zaWJsZWFwcApkZXNjcmlwdGlvbjogTW9uZ29EQiBhbnNpYmxlYXBwIGltcGxl\
bWVudGF0aW9uCmJpbmRhYmxlOiBmYWxzZQphc3luYzogb3B0aW9uYWwKcGFyYW1ldGVyczoKICAt\
IG5hbWU6IGRhdGFiYXNlX3Bhc3MKICAgIGRlc2NyaXB0aW9uOiBQYXNzd29yZCBmb3IgdGhlIGRh\
dGFiYXNlIHVzZXIKICAgIHR5cGU6IHN0cmluZwogICAgZGVmYXVsdDogYWRtaW4KICAtIG5hbWU6\
IGRhdGFiYXNlX3VzZXIKICAgIGRlc2NyaXB0aW9uOiBEYXRhYmFzZSB1c2VyCiAgICB0eXBlOiBz\
dHJpbmcKICAgIGRlZmF1bHQ6IGFkbWluCiAgLSBuYW1lOiBuYW1lc3BhY2UKICAgIGRlc2NyaXB0\
aW9uOiBOYW1lc3BhY2UgdG8gZGVwbG95IHRoZSBjbHVzdGVyIHRvCiAgICB0eXBlOiBzdHJpbmcK\
ICAgIGRlZmF1bHQ6IG1vbmdvZGItYW5zaWJsZWFwcAo="
ADD ansible /opt/ansible
ADD ansibleapp /opt/ansibleapp

RUN useradd -u 1001 -r -g 0 -M -b /opt/ansibleapp -s /sbin/nologin -c "ansibleapp user" ansibleapp
RUN chown -R 1001:0 /opt/{ansible,ansibleapp}
USER 1001
