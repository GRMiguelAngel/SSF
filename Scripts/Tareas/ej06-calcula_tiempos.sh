#!/bin/bash

total_secs=$1
days=$((total_secs/(60*60*24)))
hours=$((total_secs%(60*60*24)/3600))
minutes=$((total_secs%3600/60))
secs=$((total_secs%60))
echo "$total_secs segundos son $days días, $hours horas, $minutes minutos y $secs segundos."
