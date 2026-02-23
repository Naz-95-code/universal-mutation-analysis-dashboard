#!/bin/bash

module load bcftools/1.21

for file in *.vcf
do
    echo "Processing $file"

    bcftools view -v snps "$file" | \
    bcftools query -f '%REF>%ALT\n' | \
    sort | uniq -c | \
    awk '{
            total += $1
            counts[$2] = $1
         }
         END {
            for (type in counts)
                printf "%s\t%d\t%.6f\n", type, counts[type], counts[type]/total
         }' \
    > "${file%.vcf}_spectrum.txt"

done

echo "Done."
