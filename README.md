# Universal Mutation Analysis Dashboard (UMAD)

## Overview

The Universal Mutation Analysis Dashboard (UMAD) is a scalable bioinformatics pipeline designed to process and analyze large collections of Variant Call Format (VCF) files.

The goal of UMAD is to provide a reproducible framework for mutation characterization, comparison across samples, and downstream statistical interpretation.

This repository currently implements the mutation spectrum extraction module.


## Current Implemented Module

### Mutation Spectrum Extraction

This module:

- Filters SNPs (Single Nucleotide Polymorphisms)
- Extracts mutation types (REF > ALT)
- Computes mutation counts
- Normalizes counts to proportions
- Combines spectra across multiple samples


## Project Structure
scripts/            Shell scripts for analysis
data/test/          Small test VCF files
data/full/          Full dataset VCF files
results/spectra/    Per-sample mutation spectra
results/combined/   Combined comparison table
docs/               Documentation and notes


## Requirements

- bcftools (v1.21)
- Linux command-line environment


## Long-Term Vision

UMAD is being developed as a modular system that will support:

- Variant annotation
- Mutation signature profiling
- Cross-cancer comparison
- Statistical visualization
- Integration with interactive dashboards
