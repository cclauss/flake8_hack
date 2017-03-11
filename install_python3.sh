#!/bin/sh
echo $PATH
echo $HOME
echo ~
pwd
ls
python -V     # Python 2.7.3 !!!
# python3 -V  # Error!
pip -V        # pip 6.0.8 from /usr/local/lib/python2.7/dist-packages/pip-6.0.8-py2.7.egg (python 2.7)
# pip install --upgrade pip setuptools  # Error
# pip3 -V     # Error!
echo "start"
ls -Fla --color
wget https://s3.amazonaws.com/travis-python-archives/binaries/ubuntu/14.04/x86_64/python-3.6.0.tar.bz2
tar xjf python-3.6.0.tar.bz2
echo "finish"
ls -Fla --color
echo "home/travis/virtualenv"
ls -Fla --color home/travis/virtualenv
echo "/home/travis"
ls -Fla --color /home/travis
echo "opt/python/3.6.0/python3.6.0"
ls -Fla --color opt/python/3.6.0/python3.6.0
source home/travis/virtualenv/python3.6.0/bin/activate
# source ./home/travis/virtualenv/python3.6.0/bin/activate
# whereis -b python3  # search only binaries -- python3: /usr/lib/python3
# ls -R /usr/lib/pyth*
# which -a python3
# which python3
python -V
pip -V
# python3 -V
# pip3 -V

pip install --upgrade flake8
flake8 . --count --max-line-length=127 --statistics --exit-zero
