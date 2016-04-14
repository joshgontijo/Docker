FROM java:openjdk-8-jdk
MAINTAINER josue.egontijo@gmail.com

ENV VERSION 10.0.0.Final
ENV INSTALL_DIR /opt
ENV WILDFLY_HOME $INSTALL_DIR/wildfly
ENV DEPLOYMENT_DIR $WILDFLY_HOME/standalone/deployments

RUN curl -O http://download.jboss.org/wildfly/$VERSION/wildfly-$VERSION.tar.gz
RUN mkdir $WILDFLY_HOME
RUN tar -xzf wildfly-$VERSION.tar.gz -C $WILDFLY_HOME --strip-components 1

RUN $WILDFLY_HOME/bin/add-user.sh admin admin123 --silent

ADD mysql $WILDFLY_HOME/modules/system/layers/base/com/mysql
ADD configuration/* $WILDFLY_HOME/standalone/configuration/

RUN chmod a+x $WILDFLY_HOME/bin/standalone.sh

ENTRYPOINT ["/opt/wildffly/bin/standalone.sh", "-b", "0.0.0.0"]
EXPOSE 8080
