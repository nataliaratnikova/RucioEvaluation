#!/bin/bash -e

if [ -f /dbsessions ]; then
    echo " dbsessions script is already mounted."
else
    echo "/dbsessions script is not found. will generate one."
    echo "# Test NRDEBUG\n"  `date` > /dbsessions
    echo "/usr/bin/sqlplus64 -version >> /tmp/sqlplus-version.log" >> /dbsessions
fi

echo "=================== /dbsessions ============================"
cat /dbsessions
echo ""

/bin/bash /dbsessions
