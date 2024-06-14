#!/usr/bin/env bash

python3 run_dms_abc.py \
    --bam "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled.bam" \
    --reference "EfrEF_opt_wt_sequence.fasta" \
    --positions 72 84 207 216 360 372 381 384 396 405 519 528 540 552 672 684 696 705 717 729 741 750 762 825 828 837 840 849 858 861 870 879 882 891 1026 1119 1245 1419 1488 1506 1581 1879 1891 2050 2059 2203 2218 2224 2227 2239 2248 2362 2371 2383 2395 2515 2527 2539 2545 2548 2560 2572 2584 2593 2605 2671 2680 2683 2692 2701 2704 2713 2722 2725 2734 2863 2953 3079 3253 3322 3340 3415 \
    --readingframes \
    --frameshift_position 1728 \
    --frameshift_offset 52 \