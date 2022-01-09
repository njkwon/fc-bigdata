#bin/bash

wget https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/2.0.0.4/redshift-jdbc42-2.0.0.4.jar
sudo mv redshift-jdbc42-2.0.0.4.jar /usr/lib/spark/jars/
