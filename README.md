# Universal Mutation Analysis Dashboard

Pipeline to extract SNP mutation spectra from OncoGAN VCF files using bcftools.

## Structure

scripts/          - analysis scripts
data/test/        - test VCF files
data/full/        - full dataset 
results/spectra/  - per sample spectra 
results/combined/ - combined table

## Requirements
bcftools 1.21

## Workflow
1. Extract SNP mutation spectra
2. Normalize to proportions
3. Combine spectra across samples
