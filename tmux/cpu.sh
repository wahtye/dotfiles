#!/usr/bin/env bash
ps -A -o %cpu | awk '{s+=$1} END {print s "%"}'
