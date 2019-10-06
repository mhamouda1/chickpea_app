# #!/bin/bash
# # Install tmux 2.8 on Centos

# # install deps
# yum install gcc kernel-devel make ncurses-devel -y

# # DOWNLOAD SOURCES FOR LIBEVENT AND MAKE AND INSTALL
# cd /tmp
# curl -LOk https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
# tar -xf libevent-2.1.8-stable.tar.gz
# cd libevent-2.1.8-stable
# ./configure --prefix=/usr/local
# make
# make install

# # DOWNLOAD SOURCES FOR TMUX AND MAKE AND INSTALL

# curl -LOk https://github.com/tmux/tmux/releases/download/2.8/tmux-2.8.tar.gz
# tar -xf tmux-2.8.tar.gz
# cd tmux-2.8
# LDFLAGS="-L/usr/local/lib -Wl,-rpath=/usr/local/lib" ./configure --prefix=/usr/local
# make
# make install

# # pkill tmux
# # close your terminal window (flushes cached tmux executable)
# # open new shell and check tmux version
# tmux -V

#looks like ncurses-compat-libs is not in centos standard repolist
#yum install libevent ncurses-compat-libs -y
#curl -Lo /usr/local/bin/tmux https://github.com/mhamouda1/packages/raw/master/tmux && chmod +x /usr/local/bin/tmux
#tmux -V

yum install yum-utils -y
yum-config-manager --add-repo http://157.230.85.89/my-repo.repo
yum install tmux -y
