# !/bin/bash

ls *.tr0 | perl -pe 's/^(\S+)\.tr0$/cat $1\.tr0 \| fastq_quality_filter -q 20 -p 90 >$1\.trim/' > ../scripts/filt0
cat ../scripts/filt0 | perl -pe 's/filter /filter -Q33 /' > ../scripts/filt.sh
chmod 755 ../scripts/filt.sh
