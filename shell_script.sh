#!/bin/bash

num=100
first_name="John"
#last_name="Rudd"

echo "Display Variables"
echo "Num: $num"
echo "First Name: $first_name"

# Multi Line Comments
<< EOF
echo "The way to add"
echo "multi-line command is"
echo "less than symbol twice then a literal"
echo "and same literal at the end"
EOF

echo "Multiple comments and single comments added in script"

echo -e -n "Num: ${num} \nFirst Name: ${first_name}\n"