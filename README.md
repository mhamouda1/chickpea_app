Install git and clone the project
```bash
yum update -y && \
yum install git -y && \
mkdir ~/code && \
cd ~/code && \
git clone https://github.com/mhamouda1/chickpea-app && \
cd chickpea-app
```

Install ruby and bundler
```bash
yum install which -y && \
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
\curl -sSL https://get.rvm.io | bash -s stable --ruby && \
gem install bundler && \
bundle install
```
