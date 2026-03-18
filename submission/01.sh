#!/bin/bash
# Write the bitcoin cli command to get the bitcoin node installation version 

bitcoin-cli --version | grep -oE 'v[0-9]+(\.[0-9]+)+'
