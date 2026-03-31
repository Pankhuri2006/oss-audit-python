#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="python3"
echo "====================================================="
echo " FOSS Package Inspector "
echo "====================================================="
#Check if package is installed
if dpkg -l | grep -q "$Package"; then
echo "$Package is installed."
echo "Version info:"
dpkg -l | grep "$Package"
else
echo "$Package is NOT Installed."
fi
echo ""
echo "Descprition:"
#Case statement for description
case $Package in
python3)
echo "Python is a programming language used for web development, automation and data analysis."
;;
git)
echo "Git is a version control system used to track code changes"
;;
vim)
echo "Vim is a text editor used in Linux system"
;;
*)
echo "No description available"
;;
esac
