#!/bin/bash
# https://opensource.com/article/19/8/using-conda-ansible-administration-macos

conda create --name ansible-env --clone base
conda activate ansible-env
conda env list

conda install -c conda-forge ansible -n ansible-env
