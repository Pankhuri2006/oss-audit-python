#!/bin/bash
#Script 1:System Identity Report
#Author:Pankhuri Srivastava | Reg:24BCY10083
#Course:Open Source Software
STUDENT_NAME="Pankhuri"
SOFTWARE_CHOICE="Python"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d|cut -f2)
echo"================================"
echo" Open Source Audit - $STUDENT_NAME"
echo"================================"
echo"Software:$SOFTWARE_CHOICE"
echo"Distro:$DISTRO"
echo"Kernel:$Kernel"
echo"User:$USER_NAME"
echo"Uptime:$UPTIME"
echo"Date:$DATE"
echo"License:Linux uses GPL(open source freedom)"

