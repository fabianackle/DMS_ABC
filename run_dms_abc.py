#!/usr/bin/env python3
""""""
import argparse
import json
import os

import codon_truncation_bam_overlap
import counter
import create_count_file


def get_readingframes(reference_sequence, frameshift_position, frameshift_offset):
    """Returns the two reading frames"""
    frame1 = reference_sequence[:frameshift_position]
    frame2 = reference_sequence[frameshift_position - frameshift_offset:]
    return frame1, frame2


def DMS_processing(data_dict):
    """
    Analyses curent file i from data_dict
    """
    input_file = "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled.bam"
    codontruncated_file = "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled_codontruncated.bam"
    frameshift_position = data_dict["frameshift_position"]
    frameshift_offset = data_dict["frameshift_offset"]
    reference_name = "EfrEF_opt_wt_sequence"
    codon_truncation_bam_overlap.codon_truncation(input_file, codontruncated_file, frameshift_position, frameshift_offset, reference_name)

    triplet_count_file = "triplet_count.txt"
    positions = data_dict["position_list"]
    reference_sequence = data_dict["reference_sequence"]
    counter.count_mutants(codontruncated_file, triplet_count_file, positions, reference_name, reference_sequence)

    create_count_file.make_HDF5(triplet_count_file, reference_sequence, frameshift_position, frameshift_offset)


def main():
    parser = argparse.ArgumentParser(description="Settings for DMS_ABC script.")
    parser.add_argument("--bam_file")
    parser.add_argument("--position_list", nargs='+', type=int)  # list codons to be analyzed
    parser.add_argument("--reference_sequence") # reference fasta file
    parser.add_argument("--readingframes", action='store_true')  # bool multiple reading frames
    parser.add_argument("--frameshift_position", default=0, type=int)
    parser.add_argument("--frameshift_offset", default=0, type=int)
    args = parser.parse_args()

    parameters = {
        'bam_file': args.bam_file,
        'position_list': args.position_list,
        'reference_sequence': args.reference_sequence,
        'readingframes': args.readingframes,
        'frameshift_position': args.frameshift_position,
        'frameshift_offset': args.frameshift_offset
    }

    if bool(args.readingframes) == True:
        position = int(args.frameshift_position)
        offset = int(args.frameshift_offset)
        frame1, frame2 = get_readingframes(args.reference_sequence, position, offset)
        parameters['frameshift_position'] = position
        parameters['frameshift_offset'] = offset
        parameters['frame1'] = frame1
        parameters['frame2'] = frame2


    DMS_processing(parameters)


if __name__ == "__main__":
    main()
