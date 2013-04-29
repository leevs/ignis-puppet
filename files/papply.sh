#!/bin/sh
#Puppet apply script + setting modulepath
sudo puppet apply /home/puppet/manifests/site.pp --modulepath=/home/puppet/modules/$*
