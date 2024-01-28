#!/bin/bash
day=$1
hour=$2
minute=$3
second=$4
day_sec=$((day*60*60*24))
hour_sec=$((hour*60*60))
minute_sec=$((minute*60))
total_sec=$((day_sec+hour_sec+minute_sec+second))

echo "$day días $hour horas $minute minutos y $second segundos son $total_sec segundos."
