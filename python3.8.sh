apt update && apt upgrade

apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev python3-dev python3-venv python3-pip

curl -O https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tar.xz

tar -xf Python-3.8.2.tar.xz

cd Python-3.8.2

./configure --enable-optimizations
make -j 4
make altinstall


#mkdir ~/python-project && cd ~/python-project
#python3 -m venv venv
#source  venv/bin/activate\
#deactivate



