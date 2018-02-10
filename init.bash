#install firewalld
sudo yum install -y firewalld
sudo systemctl enable firewalld
#sudo reboot


#install nginx
sudo yum -y install epel-release
sudo yum -y install nginx
sudo systemctl start nginx
sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload

username=chzh
adduser $(username)
usermod -aG wheel $(username)

sudo yum install -y fail2ban
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
sudo cp jail.local /etc/fail2ban/jail.local
