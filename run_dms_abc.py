#!/usr/bin/env python3
""""""
import argparse
import json
import os

import codon_truncation_bam_overlap
import counter
import create_count_file


def DMS_processing(input_file, output_file, frameshift_position, frameshift_offset):
    """
    Analyses curent file i from data_dict
    """
    #
    codon_truncation_bam_overlap.codon_truncation(input_file, output_file, frameshift_position, frameshift_offset)
    # counter.count_mutants(data_dict, i)
    # create_count_file.make_HDF5(data_dict, i)


def main():
    with open('Json_test.json', 'r') as jsonfile:
        data_dict = json.load(jsonfile)

    input_file = "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled.bam"
    output_file = "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled.bam"
    frameshift_position = data_dict["frameshift_position"]
    frameshift_offset = data_dict["frameshift_offset"]

    DMS_processing(input_file, output_file, frameshift_position, frameshift_offset)


if __name__ == "__main__":
    main()
