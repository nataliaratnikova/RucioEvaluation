# Copyright European Organization for Nuclear Research (CERN) 2017
#
# NR: Should we put reference to Oracle license here? 
#
# Authors:
# - Natalia Ratnikova, <natalia.ratnikova@cern.ch>, 2019

FROM centos:7

WORKDIR /tmp
ADD oracle-instantclient18.3-sqlplus-18.3.0.0.0-3.x86_64.rpm /tmp
ADD oracle-instantclient18.3-basic-18.3.0.0.0-3.x86_64.rpm /tmp
RUN yum install -y epel-release.noarch
RUN yum upgrade -y
RUN yum install -y libaio

RUN rpm -i /tmp/oracle-instantclient18.3-basic-18.3.0.0.0-3.x86_64.rpm /tmp/oracle-instantclient18.3-sqlplus-18.3.0.0.0-3.x86_64.rpm; \
    echo "/usr/lib/oracle/18.3/client64/lib" >/etc/ld.so.conf.d/oracle.conf; \
    ldconfig

ADD docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
