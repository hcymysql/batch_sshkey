#!/bin/bash

if [ ! -d /root/.ssh ];then
    mkdir /root/.ssh
fi

cp /tmp/authorized_keys /root/.ssh/
