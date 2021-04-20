#using ubuntu t2.xlarge 32G storage  ( 2 minutes execution)

#
# UPDATE the system
sudo apt-get -y update
sudo apt-get -y upgrade

#
# Install git and wget
sudo apt-get -y install git
sudo apt-get -y install wget

#
# Download and install Anaconda 3
wget https://repo.continuum.io/archive/Anaconda3-5.3.1-Linux-x86_64.sh
sudo sh Anaconda3-5.3.1-Linux-x86_64.sh -b

source ~/.bashrc

sudo anaconda3/bin/conda update -y -n  base conda

#
# Download and uncompress the datasets
wget http://kdd.ics.uci.edu/databases/kddcup99/kddcup.data.gz
wget http://kdd.ics.uci.edu/databases/kddcup99/kddcup.data_10_percent.gz

gunzip kddcup.*.gz

#
# Download the pandas and sklearn packages
anaconda3/bin/pip install pandas
anaconda3/bin/pip install sklearn

#
# Download the ML script
git clone https://github.com/ghuecas/kdd99ml

# Ready to execute the detection script, print the command
echo "execute ./anaconda3/bin/python kdd99ml/detectAttack.py"

