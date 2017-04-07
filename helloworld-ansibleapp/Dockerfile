FROM ansibleapp/ansibleapp-base

# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.ansibleapp.version"="0.1.0"
LABEL "com.redhat.ansibleapp.spec"=\
"aWQ6IDM1ZWFkNGU4LWNmMWYtNDkwOS1iYjFiLWI5ODFmNGViMzE0MgpuYW1lOiBqY3Bvd2VybWFj\
L2hlbGxvd29ybGQtYW5zaWJsZWFwcApkZXNjcmlwdGlvbjogSGVsbG8gV29ybGQgbmdpbnggCmJp\
bmRhYmxlOiBmYWxzZQphc3luYzogInVuc3VwcG9ydGVkIgpwYXJhbWV0ZXJzOgogIC0gbmFtZTog\
bWVzc2FnZSAKICAgIGRlc2NyaXB0aW9uOiBzYXkgc29tZXRoaW5nIHRvIG5naW54IAogICAgdHlw\
ZTogc3RyaW5nCg=="
ADD ansible /opt/ansible
ADD ansibleapp /opt/ansibleapp

RUN useradd -u 1001 -r -g 0 -M -b /opt/ansibleapp -s /sbin/nologin -c "ansibleapp user" ansibleapp
RUN chown -R 1001:0 /opt/{ansible,ansibleapp}
USER 1001
