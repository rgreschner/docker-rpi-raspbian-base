#!/bin/sh
printf "Starting container at "; date;
/usr/sbin/sshd -D
