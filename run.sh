#!/bin/bash
set -e
export FLAGS_fraction_of_gpu_memory_to_use=1.0
export FLAGS_reallocate_gpu_memory_in_mb=200
export FLAGS_inner_op_parallelism=8
python3 tools/main.py --config-file configs/animeganv2.yaml 2> >(grep -v libpng) 
