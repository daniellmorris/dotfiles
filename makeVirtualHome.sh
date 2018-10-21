#!/bin/bash -e

#Get script dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Make this location the new home directory
export HOME=$DIR
export PATH=$DIR/bin:$PATH

# Run bash
bash
