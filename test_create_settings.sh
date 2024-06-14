#!/usr/bin/env bash

python create_settings_json.py \
    --jsonpath "test.json" \
    --data_files "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled.bam" \
    --job_name "First test" \
    --input_dir "/Users/fabianackle/programming/DMS_ABC/input" \
    --output_dir "/Users/fabianackle/programming/DMS_ABC/output" \
    --position_list 72 84 207 \
    --reference_sequence "AGTAAATTAATGAAAGAGTTTATTAAAGAAAATAAATGGATTGTTCTTGCGACAACTTTAACCATCTGTTTGCAAATCGCAGGAACACTTGGCGTCCCTAAATTAGTTGGCAAGTTGATTGATGTGGGCATCGTTAGCGGTGACCAACAAGTAATTAAAACGATTGGCATACAAATGTTTCTTGTGGCATTCATTGGAACAATTGCCGCCATTATTTCAAGCTATTTGTCTGCTTTAGTAGCTGCTAAATTTGGTTTTCAAGTTAGAGGATTGTTCTTTAAAAAATTTCAACAATTCTCGATGAAAAATGTTGATAAATTTGGTTCAAATTCTTTGCTAACTAGAATGACCAACGATGTAGACAATGTTCAAACAATGATTGTATTATTTTGCCAATTAATCTTTCCGGCGCCTATTATTAGTTTATTTGCCTTAGTGATGACATTTTCTTATTCAGTTTCACTCGCTTGGGTAACATTGGCTTCCATCGTATTTTACTTAGTCGTTGTTTATTTTTTAATGAAAAAAGGAACCCCTTTATCATTAAAAATTCAACCAAAAATGGATCGAATTACTACGACTTTACGAGAGTTCTTTACTGGAATTAATATGATTCGTGCGTTCAATAATCAAGATTTTGAAGAACAGCGAACCAATCAAACATTTAAAAATTACGCTGAACGCATGAGTAAAGTGAACCAAATCTTCGCTTGGATTACACCCGTTGCCTTCTTATTAATGGGAGTTGTGTACGCCTCTATTTTATGGTTTGGCGGTAATTTAGTTGCAGTAGGCACCCTACAAATTGGCACCGTTACAGCTGTGATCGAATATACGTTATTAACTTTGGCCTACTTAATGATCGCGGCTATGGTATTAGTAGTAATTCCAAGATCCGTTGCTTCCTTGAATCGCTTGCAAGAAGTTTTGTCAGAAGAAATTGAAATTAGCGATCCTCATACTGAGGCAACCATTGCTTATCATCCTGAGAAAGCCTTGATTTGCTTCGATCACGTCACGTTTCAATACACAGAAACAGCTGATCCTGTTTTAGAAAATGTTAGTTTTGTCATTCCTAAAGGAAAAACAACGGCGATTGTTGGTGCAACTGGCGCTGGTAAAAGTACTTTAGTTAAGTTACTTTTACGAATAAATGAGGTCACAGCCGGCACGATTAGCTATTCTGGCACAGATATCCGCTCATTATCTCAGCAAACGATTCGCCAAGTCATCAGTTATGTGCCACAAAAAGCCTTTCTTTTCAGTGGGACAATCTTATCAAACTTATTAATGGGAAATGCCAAAGCAACTACAGAAGAAATAAGAACGGCACTAGAAATTTCACAATCTTCTGAATTTATCGATTCCTTACCACAAGGGATTGAAAGTTTCGTAGCACAAGGCGGGTCCAACTATTCTGGAGGTCAAAAACAAAGAATGTGTATTGCACGAGCCTTAATCAAACCGGCAGACGTTTATATTTTCGATGACAGCTTTTCCGCATTAGACTACAAAACTGATGCCGCTCTACGTGCCGCTTTACATGCACAAATGTCGGACAAAACTTTACTCATTGTTGCTCAACGGTTAAGTACAATCATGAACGCTGACAACATTATCGTCCTAGATGAAGGAAGGATTGTTGGTCAAGGCACCCACGCTGATTTACTTACCACTAATAGCTATTACCAAGACTTTGCTAAATCGCAAGGTATCTTACCCAAGTAATTAAAGAAAGGATGTGACTGCTTGAAAGAAAGTTTTCTTTTCAAGCCATACAATGAAAAAAACAATGAATCTTCAAAGCTTTAAACGTTTCTGGAAAATGATTAAACCTGAGCATCCAATCTTTTATGGTCTAATGATCTGCAGTTTAATTGGAAACTTATTAATCGTTGCCATGACCTATATTATGGCAATCGGGATTGATAACCTCTTAGAAGCTATCAAGCGTGTCGGGCTCAAAGGTATGACACTTCCTTTAGTTGAAGAAGCGCTCTTAGGTCCCGTCTTACTTTTAATTCTCTTTTCAATCATTAGTAGTATCACTTCATTTATTCAAGAACGAGCAATGGCTTCTTTAAGCGAACGGGTTACTTTAAGAATTAGAAAAGAAGTGACAAAAAAGTTTAAAACTTTACCAATGGCCTTCTTTGACAATCACCAAGTGGGCGATATCATTAGTCGTTCAACAACTGGCTTAAACCAATTGTCACAAGTACTTTTAACAGGCATCAACCAATTTTTCACATCCGTCGTGACTATCCTTTTTGCAGGAATCATGTTGTTCTATATTGATGCAAAATTAACCATTTTAGTGTTGCTCCTAATTGGCGGCAGTACTTTCATGACGACAAAAATCGCCAATAAAAACAAGGTGTTTGCCGATCAAAGTCAAGCTGAATTAGGTCAATTAAATAATAAGATGGAAGAATATTTAGCAGGAAATTTGGTCACAAAAACCTTTAATCAACAGCAAAATGCTGAAAAAACAATTGATGCTGTTAATCAACAACACTATCGTGCCTTCAAAAAAGCACAATTTCTAAACTTTGCGATTTACCCAGCTATTAGATTTATTAATCAATTGGCTTTCATTATTAGTGCCATCTTAGGCGCAATGCTCGTTTTATCTGGTGGTATTACGATTGGTTTCTTGCAAGCGTATTTGCAATATATCAACCAAATTTCTGAACCGATTTCAACAGCTTCTTACGTCATTAACTCAATTCAAGCCGCGATGGCTTCCATTGATCGGATTTTTGTTATCTTAGATGAAGCTGATGAACAGCCAGAAGCAACTCATTTAGAAACTATTTCTTCTCCTAAAGGAGCCATTGAATTTAAAAATGTTCAATTTGGCTACACACCAGAAAAAATTTTAATGAAGAATGTTGATTTTTCTGTTCAACCGAAAAAAACAGTGGCCATTGTGGGACCCACCGGCGCTGGTAAAACAACATTAGTCAACTTATTAATGCGTTTCTATGAAATAAATCAAGGTGCCATTACTTTTGATGGGATTGATATTACGAAACTTTCTCGACAAAATCTAAGAAATTTATTTGGCATGGTTTTACAAAACACTTGGCTATTTGAAGGAACCGTAGCAGATAATATTGCCTATGGAAAAAAAGATGCTTCTCGTGAAGAAATAATTGAAGCAGCTAAAATTGCTCAATGTGATCATTTTATTCGGACCCTTCCTCAAGGATATGACACAATTATTTCTAGCGAAAATGGTGCATTATCACAAGGGCAACAACAGTTATTAACCATCGCCCGAATCATTTTAGCAAATCCGCCCGTTGTTATTCTCGATGAAGCAACTTCGAGTGTGGACACACGAACAGAAGCCCATATTCAAAAAGCGATGGAAACTGTCACAGAAAATCGAACAAGCTTCGTTATCGCTCACCGATTATCCACAATTGAAAATGCTGATTTAATTTTAGTGATGAAAAATGGCGATATTATTGAAAAAGGAACGCATCAGGAACTATTACAAGCTCCGACTCTTTACGCCAGCTTATATAATAGTCAATTTCAAACCACT" \
    --readingframes \
    --frameshift_position 1728 \
    --frameshift_offset 52 \
