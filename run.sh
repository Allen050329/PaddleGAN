#!/bin/bash
set -e
python3 tools/main.py --config-file configs/animeganv2.yaml 2> >(grep -v libpng) 
