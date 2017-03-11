#!/bin/sh
python -V     # Python 2.7.3 !!!
# python3 -V  # Error!
pip -V        # pip 6.0.8 from /usr/local/lib/python2.7/dist-packages/pip-6.0.8-py2.7.egg (python 2.7)
# pip install --upgrade pip setuptools  # Error
# pip3 -V     # Error!
echo $HOME
echo ~
echo $PATH
pwd
ls --help
# cd ~
ls
#mkdir Python3
#cd Python3
#pwd
wget https://s3.amazonaws.com/travis-python-archives/binaries/ubuntu/14.04/x86_64/python-3.6.0.tar.bz2
tar xjf python-3.6.0.tar.bz2
pwd
ls -Fla --color
# source ~/virtualenv/python3.6.0/bin/activate
# source ./home/travis/virtualenv/python3.6.0/bin/activate
whereis -b python3  # search only binaries -- python3: /usr/lib/python3
which -a python3
# which python3
python -V
pip -V
# python3 -V
# pip3 -V
ls -R /usr/lib/pyth*

pip install --upgrade flake8
flake8 . --count --max-line-length=127 --statistics --exit-zero