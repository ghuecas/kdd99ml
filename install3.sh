
#using ubuntu t2.xlarge 32G storage  ( 2 minutes execution)

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install git
sudo apt-get -y install wget 


sudo apt -y install python-pip


wget http://kdd.ics.uci.edu/databases/kddcup99/kddcup.data.gz
wget http://kdd.ics.uci.edu/databases/kddcup99/kddcup.data_10_percent.gz

gunzip kddcup.*.gz


#wget https://repo.continuum.io/archive/Anaconda2-5.1.0-Linux-x86_64.sh 
#sudo sh Anaconda2-5.1.0-Linux-x86_64.sh -b 
wget https://repo.continuum.io/archive/Anaconda3-5.3.1-Linux-x86_64.sh
sudo sh Anaconda3-5.3.1-Linux-x86_64.sh -b

source ~/.bashrc

sudo anaconda3/bin/conda update -y -n  base conda

git clone https://github.com/ghuecas/kdd99ml


source ~/.bashrc
./anaconda3/bin/python kdd99ml/detectAttack.py 





