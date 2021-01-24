#!/usr/bin/env bash
echo "---------------------------------------------------------------"
echo " System information "
echo "---------------------------------------------------------------"
echo "Operating system : $(uname)"
lsb_release -a 2>/dev/null || echo "lsb_release command not found"
echo "Kernel : $(uname -r)"


