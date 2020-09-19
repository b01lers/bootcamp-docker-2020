# b01lers Bootcamp Docker Container
The docker container for the 2020 CTF bootcamp

# building

```sh
$ sudo docker build . -t bootcamp-docker
```

# running

```sh
$ sudo docker run --rm --name bootcamp -p 6901:6901 -p 8888:8888 -p 5901:5901 -p 5003:5003 --env VNC_RESOLUTION=1920x1080 bootcamp-docker
```

# video instructions

Video instructions for running this container can be found at [our youtube channel](https://www.youtube.com/watch?v=a66mwylcXVU&list=PLdGU-K4Khkr_vuAVPbIBPgDfi9jq3PuYl). If you are not pulling from Docker Hub and instead building locally, you can just substitute the run command with the build and run commands above.

## Tool List

### Web

Programs: Postman, Burpsuite, Firefox, cURL, MySQL
Pip: Flask

### Reversing

Programs: gdb + gef, Ghidra, readelf, gcc, g++

### Crypto

Pip: sage, jupyter, python3

### Pwn

Pip: pwntools, ROPgadget, one_gadget, z3, pyCryptoDome


