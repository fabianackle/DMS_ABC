#!/usr/bin/env python3
"""Running Gianni's adapted DMS_ABC pipeline"""
import argparse
import json
import os

import dnaio

import codon_truncation_bam_overlap
import counter
import create_count_file


def get_readingframes(reference_sequence, frameshift_position, frameshift_offset):
    """Returns the two reading frames"""
    frame1 = reference_sequence[:frameshift_position]
    frame2 = reference_sequence[frameshift_position - frameshift_offset:]
    return frame1, frame2


def read_refrence(fasta_file):
    """Returns the name and the sequence of a fasta file"""
    with dnaio.open(fasta_file) as file:
        for record in file:
            name = record.name
            sequence = record.sequence
            break
    return name, sequence


def DMS_processing(parameters):
    """
    Analyses bam_file
    """
    input_file = parameters["bam_file"]
    codontruncated_file = input_file[:-4] + "_codontruncated.bam"
    triplet_count_file = input_file[:-4] + "triplet_count.txt"

    frameshift_position = parameters["frameshift_position"]
    frameshift_offset = parameters["frameshift_offset"]

    reference_name = parameters["reference_name"]
    reference_sequence = parameters["reference_sequence"]

    positions = parameters["position_list"]

    codon_truncation_bam_overlap.codon_truncation(input_file, codontruncated_file, frameshift_position, frameshift_offset, reference_name)

    counter.count_mutants(codontruncated_file, triplet_count_file, positions, reference_name, reference_sequence)

    create_count_file.make_HDF5(triplet_count_file, reference_sequence, frameshift_position, frameshift_offset)


def main():
    parser = argparse.ArgumentParser(description="Settings for DMS_ABC script.")
    parser.add_argument("--bam")
    parser.add_argument("--reference")  # reference fasta file
    parser.add_argument("--positions", nargs='+', type=int)  # list codons to be analyzed
    parser.add_argument("--readingframes", action='store_true')  # bool multiple reading frames
    parser.add_argument("--frameshift_position", default=0, type=int)
    parser.add_argument("--frameshift_offset", default=0, type=int)
    args = parser.parse_args()

    reference_name, reference_sequence = read_refrence(args.reference)

    parameters = {
        'bam_file': args.bam,
        'reference_name': reference_name,
        'reference_sequence': reference_sequence,
        'position_list': args.positions,
        'readingframes': args.readingframes,
    }

    if bool(args.readingframes) == True:
        position = int(args.frameshift_position)
        offset = int(args.frameshift_offset)
        frame1, frame2 = get_readingframes(reference_sequence, position, offset)
        parameters['frameshift_position'] = position
        parameters['frameshift_offset'] = offset
        parameters['frame1'] = frame1
        parameters['frame2'] = frame2

    DMS_processing(parameters)


if __name__ == "__main__":
    main()
