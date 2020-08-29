set -e

### PWN Example 01
# mkdir -p /pwn
# mv /headless/install/pwn/example01.c /pwn
# gcc -O0 /pwn/example01.c -o /pwn/example01 -g
# rm /pwn/example01.c
# chmod +x /pwn/example01
# 
# mv /headless/install/pwn/example01.xinetd /etc/xinetd.d/example01
# echo "XINETDLOG" > /var/log/xinetdlog
# chmod 777 /var/log/xinetdlog
mkdir -p /var/log/mysql/
touch /var/log/mysql/error.log
chmod 777 /var/log/mysql/ -R

# echo "#! /bin/bash" > /pwn/example01.sh
# echo "cd /pwn/ && ./example01" > /pwn/example01.sh
# chmod +x /pwn/example01.sh
# chmod 755 -R /pwn/


### Put web stuff in the right place
mkdir -p /web
mv /headless/install/web/* /web/
chmod 755 /web -R
chmod 777 -R /var/lib/mysql
