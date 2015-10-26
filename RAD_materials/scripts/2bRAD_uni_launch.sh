# !/bin/bash

ls *.trim | perl -pe 's/^(.+)$/\.\.\/scripts\/uniquerOne.pl $1 >$1\.uni/' > ../scripts/unii.sh
chmod 755 ../scripts/unii.sh