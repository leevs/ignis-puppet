#!/bin/sh
#pull newest updates and run papply
#papply see ref.  ~/files/papply.sh
cd /home/puppet
git pull && papply
