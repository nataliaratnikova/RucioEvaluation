Oracle sessions monitoring
==========================

This container is intended for watching Rucio load on the Database. 

It runs an sqlplus query to get a number of currently running sessions 
for a given account (RUcio instance) and will eventually post the numbers 
to graphite server running in the same kubernetes cluster.

Currently I log numbers into a file mounted to the container. 

To start the container:

```docker run --name=sessions-mon -e DBSECRET="`cat ~/private/cms_rucio_dev_admin.int2r`" -v /tmp/dbsessions:/dbsessions -v /tmp/dbsessions.log:/dbsessions.log dbsessions```
