# System Updates
apt update && apt upgrade


# Install software

apt-get install -y \
curl \
dnsutils \
arping \
git \
zsh \
rake \
net-tools \
nginx \
ufw \
python3-pip \
python2
zsh \
tcpdump \
nmap  \
netcat \
whatweb \
netdiscover  \
arp-scan \
dnsrecon \
hydra  \
wfuzz

git clone https://github.com/christophetd/censys-subdomain-finder.git
 
#sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh `"
#sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`" -s ask

wget https://github.com/danielmiessler/SecLists/blob/03b4d2c22c9f0bc0a1f5093dbbfe57464f0d9bf8/Passwords/Leaked-Databases/rockyou-20.txt
