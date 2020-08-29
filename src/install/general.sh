apt-get -y update
apt-get --no-install-recommends -y install \
    default-jdk \
    wget \
    unzip \
    gdb \
    python3 \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-mysqldb \
    mysql-client \
    mysql-server \
    curl \
    php \
    gcc \
    g++ \
    binutils \
    tmux \
    vim \
    netcat \
    radare2 \
    sagemath \
    ruby-dev \
    git \
    x11-xserver-utils \
    libgtk-3-0 \
    libgtk-3-dev \
    firefox \
    xinetd

echo 'syntax on
      set hidden
      set wildmenu
      set showcmd
      set ignorecase
      set smartcase
      set backspace=indent,eol,start
      set autoindent
      set nostartofline
      set ruler
      set laststatus=2
      set confirm
      set cmdheight=2
      set number relativenumber
      set smartcase
      set cursorline
      set incsearch
      set wildmenu
      set notimeout ttimeout ttimeoutlen=200
      set pastetoggle=<F11>
      set autoindent
      set expandtab
      set tabstop=4
      set shiftwidth=4
      set softtabstop=4
      set nofoldenable
      set noerrorbells
      set noswapfile
      set completeopt-=preview
      set encoding=utf-8' > /headless/.vimrc

echo ' 
! -----------------------------------------------------------------------------
! File: gruvbox-dark.xresources
! Description: Retro groove colorscheme generalized
! Author: morhetz <morhetz@gmail.com>
! Source: https://github.com/morhetz/gruvbox-generalized
! Last Modified: 6 Sep 2014
! -----------------------------------------------------------------------------

! hard contrast: *background: #1d2021
*background: #282828
! soft contrast: *background: #32302f
*foreground: #ebdbb2
! Black + DarkGrey
*color0:  #282828
*color8:  #928374
! DarkRed + Red
*color1:  #cc241d
*color9:  #fb4934
! DarkGreen + Green
*color2:  #98971a
*color10: #b8bb26
! DarkYellow + Yellow
*color3:  #d79921
*color11: #fabd2f
! DarkBlue + Blue
*color4:  #458588
*color12: #83a598
! DarkMagenta + Magenta
*color5:  #b16286
*color13: #d3869b
! DarkCyan + Cyan
*color6:  #689d6a
*color14: #8ec07c
! LightGrey + White
*color7:  #a89984
*color15: #ebdbb2
xterm*faceName: Ubuntu Mono
xterm*faceSize: 14
xterm*renderFont: true' >> ~/.Xresources

echo 'if ! xset q &>/dev/null; then echo ""; else xrdb -merge ~/.Xresources; mkdir -p /headless/bootcamp && cd /headless/bootcamp/; fi' >> /headless/.bashrc


mkdir -p /headless/.icewm
echo 'DesktopBackgroundImage="/headless/config/wallpaper.png"' > /headless/.icewm/preferences
