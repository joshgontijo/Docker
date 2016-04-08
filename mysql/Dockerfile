FROM ubuntu

COPY ./setup.sh /tmp/setup.sh
RUN sudo /tmp/setup.sh

COPY ./custom.cnf /etc/mysql/conf.d/custom.cnf
COPY ./query.sql /tmp/query.sql
COPY ./initdb.sh /opt/initdb.sh

EXPOSE 3306

CMD ["/bin/bash", "/opt/initdb.sh"]