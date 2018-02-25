FROM centos:7
MAINTAINER dev@arctiq.ca

LABEL name="Network Testing Image" \
    license="GPLv2" 
    
RUN yum install -y net-tools bind-utils telnet nc net-snmp net-snmp-utils
RUN echo 'disableAuthorization yes' > /etc/snmp/snmptrapd.conf

ADD sleep.sh .

#ENTRYPOINT ["sh", "sleep.sh"]

EXPOSE 162

CMD ["snmptrapd","-L","o","-f"]
