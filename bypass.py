import json
import Codon_truncation_bam_overlapp
import counter
import create_count_file

from DMS_processing_multiprocessing import DMS_processing

# Load configuration file
with open('output/Json_test.json', 'r') as jsonfile:
    data_dict = json.load(jsonfile)

# Call the processing function directly
file = "331281_01-UDI001_eth7_rep1_Lib49_50_S30_adaptor_removed_trimmed.raw_subsampled.bam"
DMS_processing(file, data_dict=data_dict) 