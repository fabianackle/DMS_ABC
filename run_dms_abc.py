#!/usr/bin/env python3
""""""
import argparse
import json
import os

import codon_truncation_bam_overlap
import counter
import create_count_file


def DMS_processing(data_dict):
    """
    Analyses curent file i from data_dict
    """
    input_file = "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled.bam"
    codontruncated_file = "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled_codontruncated.bam"
    frameshift_position = data_dict["frameshift_position"]
    frameshift_offset = data_dict["frameshift_offset"]
    codon_truncation_bam_overlap.codon_truncation(input_file, codontruncated_file, frameshift_position, frameshift_offset)

    triplet_count_file = "triplet_count.txt"
    positions = data_dict["position_list"]
    reference_sequence = data_dict["reference_sequence"]
    counter.count_mutants(codontruncated_file, triplet_count_file, positions, reference_sequence)

    # create_count_file.make_HDF5(data_dict, i)


def main():
    with open('Json_test.json', 'r') as json_file:
        data_dict = json.load(json_file)

    DMS_processing(data_dict)


if __name__ == "__main__":
    main()
