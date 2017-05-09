#! /bin/sh
#
# add_ec2_ssh_key.sh
# Copyright (C) 2017 malipat <malipat@186590cf7d59.ant.amazon.com>
#
# Distributed under terms of the MIT license.
#
echo "This script adds an ssh key to global list"
if [ $# != 1 ]
then
    echo "Invalid usage!"
    echo "Correct usage: ./add_ec2_ssh_key.sh <pem file path>"
else
    echo "Creating .ssh directory in home folder"
    mkdir -p ~/.ssh
    echo "Move the downloaded .pem file to the ~/.ssh directory"
    mv $1 ~/.ssh
    echo "Change the permissions of the .pem file so only the root user can read it"
    chmod 400 ~/.ssh/$(basename $1)
    echo "Update ssh config file. Refer: http://nerderati.com/2011/03/17/simplify-your-life-with-an-ssh-config-file/"
    vim ~/.ssh/config
fi
