#!/bin/bash

if [ ! -d /root/.ssh ];then
    mkdir /root/.ssh
fi

cp ./authorized_keys /root/.ssh/

