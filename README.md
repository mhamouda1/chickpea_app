Sets up a development machine with vim, tmux, silver searcher, terraform, docker, and docker-compose

Copy and paste the one liner below on a fresh CentOS 7 machine to install git, clone the project, install rvm/ruby/bundler, and run setup
```bash
yum update -y && \
yum install git -y && \
mkdir -p ~/code && \
cd ~/code && \
git clone https://github.com/mhamouda1/development-machine && \
cd development-machine && \
yum install which -y && \
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
\curl -sSL https://get.rvm.io | bash -s stable --ruby && \
source /usr/local/rvm/scripts/rvm && \
gem install bundler && \
bundle install && \
ruby setup.rb && source ~/.bash_profile
```


```bash
#faster install
apt-get update -y && \
apt-get install git -y && \
apt-get remove vim -y && \
mkdir -p ~/code && \
cd ~/code && \
git clone https://github.com/mhamouda1/development-machine && \
cd development-machine && \
apt-get install ruby -y && \
gem install bundler && \
bundle install && \
ruby setup.rb && source ~/.bash_profile
```
