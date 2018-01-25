set -xe
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

echo "installing basic things ... "
yum install wget which netstat -y
yum install epel-release -y
yum install gcc-c++ make -y 
wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
wget https://download.docker.com/linux/centos/docker-ce.repo -O /etc/yum.repos.d/docker-ce.repo
yum install docker-ce -y
yum update -y

echo "installing node ... "
wget https://nodejs.org/dist/v8.9.4/node-v8.9.4-linux-x64.tar.xz -O node-v8.9.4-linux-x64.tar.xz
tar -xf node-v8.9.4-linux-x64.tar.xz
mv node-v8.9.4-linux-x64 /usr/local/
ln -s /usr/local/node-v8.9.4-linux-x64 /usr/local/node
ln -s /usr/local/node/bin/* /usr/local/bin/


echo "installing rancher ... "
wget https://github.com/rancher/cli/releases/download/v0.6.7/rancher-linux-amd64-v0.6.7.tar.gz
tar -xzf rancher-linux-amd64-v0.6.7.tar.gz
mv rancher-v0.6.7 /usr/local/
ln -s /usr/local/rancher-v0.6.7 /usr/local/node
ln -s /usr/local/rancher-v0.6.7/* /usr/local/bin/

