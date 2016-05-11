# install epel
yum install -y epel-release
sed -ie 's/enabled=1/enabled=0/' /etc/yum.repos.d/epel.repo

# install extra packages
yum install --enablerepo=epel -y p7zip
