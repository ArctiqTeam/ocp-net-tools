FROM centos:centos7
 
RUN /bin/sh -c "while true; do echo hello world; sleep 1; done"
