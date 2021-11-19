if [ -f "/etc/httpd/conf.d/ganglia.conf" ]; then
    echo "Setting up ganglia on master node"
    sudo sed -i 's/Order deny,allow/#Order deny,allow/g' /etc/httpd/conf.d/ganglia.conf
    sudo service httpd reload
fi