# Configure Ghidra
wget https://ghidra-sre.org/ghidra_9.1.2_PUBLIC_20200212.zip
unzip ghidra_9.1.2_PUBLIC_20200212.zip
ln -s $(pwd)/ghidra_9.1.2_PUBLIC/ghidraRun /bin/ghidra

# Configure GDB
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
