#bin/bash

wget https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/1.2.37.1061/RedshiftJDBC42-no-awssdk-1.2.37.1061.jar
sudo mv RedshiftJDBC42-no-awssdk-1.2.37.1061.jar /usr/lib/spark/jars/
