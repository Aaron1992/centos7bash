yum install epel-release -y
yum install gcc gettext autoconf libtool automake make pcre-devel asciidoc xmlto c-ares-devel libev-devel libsodium-devel mbedtls-devel -y
su -c 'yum update'
su -c 'yum install shadowsocks-libev'
cp magic ~/config.json

#cp damaon service to systemd

systemctl daemon-reload
