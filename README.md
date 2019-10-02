Install git
```bash
yum update -y && \
yum install git && \
mkdir ~/code && \
cd ~/code && \
git clone https://github.com/mhamouda1/chickpea-app && \
cd chickpea-app
```

install ruby and bundler
```bash
yum groupinstall "Development Tools" -y && \
yum install wget -y && \
cd /tmp && \
wget http://cache.ruby-lang.org/pub/ruby/2.6/ruby-2.6.0.tar.gz && \
tar -xzvf ruby-2.6.0.tar.gz && \
cd ruby-2.6.0 && \
./configure && \
make && \
sudo make install && \
ruby -v && \
gem update --system
```
