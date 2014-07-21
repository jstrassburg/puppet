#!/bin/sh

if [ $# == 1 ]; then
  BRANCH=$1
else
  BRANCH=master
fi

cd /var/lib/puppet/repo
git fetch
git checkout $BRANCH
git pull && /usr/local/bin/papply
