#!/bin/ash

apk update && apk add\
  git\
  gcc\
  openssl\
  python\
  python-dev\
  musl-dev\
  libffi-dev\
  openssl-dev\
  libxml2\
  libxslt\
  libxml2-dev\
  libxslt-dev


python /scripts/get_pip.py

pip install pyOpenSSL lxml

apk del\
  python-dev\
  gcc\
  musl-dev\
  libffi-dev\
  openssl-dev\
  libxml2-dev\
  libxslt-dev

rm /scripts/get_pip.py
