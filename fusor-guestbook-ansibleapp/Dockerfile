FROM ansibleapp/ansibleapp-base
MAINTAINER Erik Nelson <ernelson@redhat.com>

LABEL "com.redhat.ansibleapp.version"="0.1.0"
LABEL "com.redhat.ansibleapp.spec"=\
"aWQ6IDM1ZWFkNGU4LWNmMWYtNDkwOS1iYjFiLWI5ODFmNGViMzE0MgpuYW1lOiBhbnNpYmxlYXBw\
L2Z1c29yLWd1ZXN0Ym9vay1hbnNpYmxlYXBwCmRlc2NyaXB0aW9uOiBBIG1vbmdvIGJhY2tlZCBn\
dWVzdGJvb2sgaW4gbm9kZQpiaW5kYWJsZTogZmFsc2UKYXN5bmM6ICJ1bnN1cHBvcnRlZCIKcGFy\
YW1ldGVyczoKICAtIG5hbWU6IG1vbmdvX2hvc3QKICAgIGRlc2NyaXB0aW9uOiBNb25nb0RCIEhv\
c3QKICAgIHR5cGU6IHN0cmluZwogIC0gbmFtZTogbW9uZ29fcG9ydAogICAgZGVzY3JpcHRpb246\
IE1vbmdvREIgUG9ydAogICAgdHlwZTogc3RyaW5nCiAgLSBuYW1lOiBtb25nb19kYgogICAgZGVz\
Y3JpcHRpb246IE1vbmdvREIgRGF0YWJhc2UKICAgIHR5cGU6IHN0cmluZwogIC0gbmFtZTogbW9u\
Z29fdXNlcgogICAgZGVzY3JpcHRpb246IE1vbmdvREIgVXNlcgogICAgdHlwZTogc3RyaW5nCiAg\
LSBuYW1lOiBtb25nb19wYXNzCiAgICBkZXNjcmlwdGlvbjogTW9uZ29EQiBQYXNzd29yZAogICAg\
dHlwZTogc3RyaW5nCg=="
ADD ansible /opt/ansible
ADD ansibleapp /opt/ansibleapp

RUN useradd -u 1001 -r -g 0 -M -b /opt/ansibleapp -s /sbin/nologin -c "ansibleapp user" ansibleapp
RUN chown -R 1001:0 /opt/{ansible,ansibleapp}
USER 1001
