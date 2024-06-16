#!/usr/bin/env bash

echo "only analyzing EfrE"

python3 run_dms_abc.py \
    --bam "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled.bam" \
    --reference "EfrE_sequence.fasta" \
    --positions 72 84 207 216 360 372 381 384 396 405 519 528 540 552 672 684 696 705 717 729 741 750 762 825 828 837 840 849 858 861 870 879 882 891 1026 1119 1245 1419 1488 1506 1581