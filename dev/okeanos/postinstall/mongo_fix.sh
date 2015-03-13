#!/bin/bash

service stop mongod

if [ -f /edx/var/mongo/mongodb/mongof.lock ]
  rm -f /edx/var/mongo/mongodb/mongod.lock
fi

if [ -d /edx/var/mongo/mongodb/admin ]
  rm -rf /edx/var/mongo/mongodb/admin
fi

if [ -d /edx/var/mongo/mongodb/local ]
  rm -rf /edx/var/mongo/mongodb/local
fi

mongod --repair --config /etc/mongodb.conf

service start mongod

chown -R mongodb:mongodb /edx/var/mongo/
