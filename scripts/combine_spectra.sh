#!/bin/bash
set -e

input_dir="results/spectra"
output_dir="results/combined"
mkdir -p "$output_dir"

output_file="$output_dir/combined_spectra.tsv"

echo -e "Sample\tMutation\tCount\tFrequency" > "$output_file"

for file in "$input_dir"/*_spectrum.txt
do
    sample=$(basename "$file" _spectrum.txt)

    awk -v s="$sample" '{
        print s "\t" $1 "\t" $2 "\t" $3
    }' "$file" >> "$output_file"

done

echo "Combined table created: $output_file"
