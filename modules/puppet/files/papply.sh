#!/bin/sh

REPO_PATH=/var/lib/puppet/repo
sudo puppet apply $REPO_PATH/manifests/site.pp --modulepath=$REPO_PATH/modules/ $*