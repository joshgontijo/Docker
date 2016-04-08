#!/bin/bash
# :: THIS SCRIPT RUNS ON INSTANCE STARTUP ::

/usr/sbin/mysqld &
sleep 5
echo ":: CREATING DATABASES ::"
mysql -uroot -proot < /tmp/query.sql
echo ":: STOPPING MYSQL SERVICE ::"
killall -TERM mysqld
sleep 5
echo ":: RUNNING /usr/sbin/mysqld ::"
/usr/sbin/mysqld
