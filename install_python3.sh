#!/bin/sh
echo $PATH
echo $HOME
echo ~
pwd
ls
python -V     # Python 2.7.3 !!!
/home/travis/virtualenv/python3.2_with_system_site_packages/bin/activate
python -V     # Python 2.7.3 !!!
# python3 -V  # Error!
pip -V        # pip 6.0.8 from /usr/local/lib/python2.7/dist-packages/pip-6.0.8-py2.7.egg (python 2.7)
# pip install --upgrade pip setuptools  # Error
# pip3 -V     # Error!
echo "start"
# cd /
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
python -V     # Python 2.7.3 !!!
# source ./home/travis/virtualenv/python3.6.0/bin/activate
# whereis -b python3  # search only binaries -- python3: /usr/lib/python3
# ls -R /usr/lib/pyth*
# which -a python3
# which python3
#    - echo $HOME  # /home/travis
#    - pwd         # /home/travis/build/cclauss/flake8_hack
#    - # cd /
#    - # pwd
#    - # mkdir Python_3.6.0
#    - # cd Python_3.6.0
#    - wget https://s3.amazonaws.com/travis-python-archives/binaries/ubuntu/14.04/x86_64/python-3.6.0.tar.bz2
#    - tar xjf python-3.6.0.tar.bz2  # creates ./home and ./opt
#    - ls home -Fla --color
#    - ls home/travis -Fla --color
#    - ls home/travis/virtualenv -Fla --color
#    - ls home/travis/virtualenv/python3.6.0/bin
#    - #home/travis/virtualenv/python3.6.0/bin/python -V
#    - #home/travis/virtualenv/python3.6.0/bin/pip -V
#    - ls opt -Fla --color
#    - ls opt/python -Fla --color
#    - ls /opt/python
#    - cp opt/python/3.6.0 /opt/python
#    - python3 -V
#    - ls opt/python/3.6.0 -Fla --color
#    - ls opt/python/3.6.0/bin -Fla --color
#    - # ls opt/python/3.6.0/python3.6.0/bin
#    - # source python-3.6.0/bin/activate
#    - source home/travis/virtualenv/python3.6.0/bin/activate
#    - python -V
#    - pip -V
#    - #home/travis/virtualenv/python3.6.0/bin/python3 -V
#    - #home/travis/virtualenv/python3.6.0/bin/python  -V
#    - #home/travis/virtualenv/python3.6.0/bin/pip3    -V
#    - #home/travis/virtualenv/python3.6.0/bin/pip     -V
#    - #opt/python/3.6.0/bin/python3                   -V
#    - #opt/python/3.6.0/bin/python                    -V
#    - #opt/python/3.6.0/bin/pip3                      -V
#    - #opt/python/3.6.0/bin/pip                       -V
    
python -V
pip -V
# python3 -V
# pip3 -V

pip install --upgrade flake8
flake8 . --count --max-line-length=127 --statistics --exit-zero
