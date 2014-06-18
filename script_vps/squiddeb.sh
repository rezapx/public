# initialisasi var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0'`;
MYIP2="s/xxxxxxxxx/$MYIP/g";
apt-get -y update
apt-get -y install squid3
wget -O /etc/squid3/squid.conf "http://ksdata.tk/debian7/squid3.conf"
sed -i $MYIP2 /etc/squid3/squid.conf;
service squid3 restart