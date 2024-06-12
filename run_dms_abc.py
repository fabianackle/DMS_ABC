import json
import codon_truncation_bam_overlap
import counter
import create_count_file

# from DMS_processing_multiprocessing import DMS_processing


def DMS_processing(i, data_dict):
    """
    Analyses curent file i from data_dict
    """

    codon_truncation_bam_overlap.codon_truncation(data_dict, i)
    counter.count_mutants(data_dict, i)
    create_count_file.make_HDF5(data_dict, i)


# Load configuration file
with open('input/Json_test.json', 'r') as jsonfile:
    data_dict = json.load(jsonfile)

# Call the processing function directly
file = "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled.bam"
DMS_processing(file, data_dict=data_dict)
