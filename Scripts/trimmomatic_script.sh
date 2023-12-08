#!/bin/bash

# Path to the folder containing the paired-end datasets
data_folder="/home/administrator/projects/bioinformatics_miniproject/fasterq_results"

# Directory to store the trimmed output
output_dir="/home/administrator/projects/bioinformatics_miniproject/trimmed_output"

# Create the output directory
mkdir -p "$output_dir"

# Path to TruSeq adapter file (it's in the current directory)
adapter_file="TruSeq3-PE.fa"

# Run Trimmomatic with TruSeq adapter file
for forward_read in "$data_folder"/*_1.fastq; do
    # Extract the dataset name
    dataset=$(basename "$forward_read" "_1.fastq")

    # Define the path to the corresponding reverse read
    reverse_read="${data_folder}/${dataset}_2.fastq"

    # Define the path for the trimmed output
    trimmed_forward="${output_dir}/${dataset}_1_trimmed.fastq"
    trimmed_reverse="${output_dir}/${dataset}_2_trimmed.fastq"

    # Run Trimmomatic with TruSeq adapter file
    trimmomatic PE -phred33 "$forward_read" "$reverse_read" \
        "$trimmed_forward" "$output_dir/unpaired_${dataset}_1.fastq" \
        "$trimmed_reverse" "$output_dir/unpaired_${dataset}_2.fastq" \
        ILLUMINACLIP:"$adapter_file":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:4:30 MINLEN:36
done
