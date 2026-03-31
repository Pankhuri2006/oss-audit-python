#!/bin/bash
# Script 3: Disk and Permission Auditor
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "============================================"
echo " Directory Audit report"
echo "============================================"
for DIR in "${DIRS[@]}"; do
if [ -d "$DIR" ]; then
#Get permissions + owner
PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
#Get size
SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
echo "$DIR => Permissions: $PERMS | Size: $SIZE"
else
echo "$DIR does not exist on this system"
fi
done
echo ""
echo "Checking Python config directory..."
if [ -d "/etc/python3" ]; then
ls -ld /etc/python3
else
echo "python config directory not found"
fi
