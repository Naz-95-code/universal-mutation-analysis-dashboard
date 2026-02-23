#!/bin/bash

echo -e "Mutation\tBreast_sim1\tBreast_sim2\tProst_sim1\tProst_sim2" > combined_spectrum.txt

paste \
    <(sort Breast-AdenoCa_sim1_spectrum.txt | awk '{print $1"\t"$3}') \
    <(sort Breast-AdenoCa_sim2_spectrum.txt | awk '{print $3}') \
    <(sort Prost-AdenoCA_sim1_spectrum.txt | awk '{print $3}') \
    <(sort Prost-AdenoCA_sim2_spectrum.txt | awk '{print $3}') \
    >> combined_spectrum.txt

echo "Combined table created: combined_spectrum.txt"
