pip3 --no-cache-dir install flask setuptools
wget -O postman.tar.gz https://dl.pstmn.io/download/latest/linux64
tar -xzvf postman.tar.gz
ln -s $(pwd)/Postman/Postman /bin/postman
ln -s /headless/install/burpsuite.sh /bin/burpsuite-install
