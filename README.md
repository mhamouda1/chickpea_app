Install git, ruby and bundle
```bash
yum update -y && \
yum install git

mkdir ~/code
cd ~/code
git clone https://github.com/mhamouda1/chickpea-app
cd chickpea-app
yum install git ruby bundle -y
bundle install
```
