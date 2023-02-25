#!/bin/bash

ls_output_with_dollar=$(ls)

ls_output_with_backtick=`ls`

echo "with dollar: $ls_output_with_dollar"

echo "with backtick: $ls_output_with_backtick"

todays_date=$(date +"%Y-%m-%d")

echo "Creating text file with today's date as a file name"
touch ${todays_date}.txt

echo "Adding ls cmd output to file"
ls > ${todays_date}.txt

echo "Display Context of file"
cat ${todays_date}.txt