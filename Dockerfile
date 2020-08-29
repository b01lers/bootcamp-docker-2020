FROM ubuntu:18.04

## Connection ports for controlling the UI:
# VNC port:5901
# noVNC webport, connect via http://IP:6901/?password=vncpassword
ENV DISPLAY=:1 \
    VNC_PORT=5901 \
    NO_VNC_PORT=6901
EXPOSE $VNC_PORT $NO_VNC_PORT

### Envrionment config
ENV HOME=/headless \
    TERM=xterm \
    STARTUPDIR=/dockerstartup \
    INSTALL=/headless/install \
    SCRIPTS=/headless/scripts \
    NO_VNC_HOME=/headless/noVNC \
    DEBIAN_FRONTEND=noninteractive \
    VNC_COL_DEPTH=24 \
    VNC_RESOLUTION=1920x1080 \
    VNC_PW=password \
    VNC_VIEW_ONLY=false
WORKDIR $HOME

### Add all install scripts for further steps
ADD ./src/ $HOME/
RUN find $INSTALL -name '*.sh' -exec chmod a+x {} +

### Install some common tools
RUN $INSTALL/tools.sh
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

### Install custom fonts
RUN $INSTALL/install_custom_fonts.sh

### Install xvnc-server & noVNC - HTML5 based VNC viewer
RUN $INSTALL/tigervnc.sh
RUN $INSTALL/no_vnc.sh

### Install firefox and chrome browser
RUN $INSTALL/firefox.sh

### Install IceWM UI
RUN $INSTALL/icewm_ui.sh

### configure startup
RUN $INSTALL/libnss_wrapper.sh
ADD ./src/scripts $STARTUPDIR
RUN $INSTALL/set_user_permission.sh $STARTUPDIR $HOME

RUN $INSTALL/general.sh
RUN $INSTALL/web.sh
RUN $INSTALL/rev.sh
RUN $INSTALL/crypto.sh
RUN $INSTALL/pwn.sh
RUN $INSTALL/challenges.sh

USER 1000

ENTRYPOINT ["/dockerstartup/vnc_startup.sh"]
CMD ["--wait"]
