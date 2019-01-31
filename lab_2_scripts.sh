#!/bin/bash
#Author: Adam Hoerger
#Date: 1/30/2019

#Part 1: Prompt for and store RegEx and filename.
echo "Give a Regular Expression:"
read regex
echo "Give a filename:"
read filename

#Part 2: Run grep with the provided regex and filename
grep $regex $filename

#Part 3:
#3.1: Count number of phone numbers in regex_practice.txt
echo "Number of phone numbers:"
grep -E -c "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" regex_practice.txt

#3.2: Count the number of emails in regex_practice.txt
echo "Number of emails:"
grep -E -c "^.*@.*\..*$" regex_practice.txt

#3.3: List all of the phone numbers in the "303" area code and store the results in "phone_results.txt"
grep -E "^303-[0-9]{3}-[0-9]{4}$" regex_practice.txt  > phone_results.txt

#3.4: List all of the emails from geocities.com and store the results in "email_results.txt"
grep -E "^.*@geocities.com$" regex_practice.txt > email_results.txt

#3.5: List all of the lines that match a command-line regular expresion and store the results in "command_results.txt"
grep -E $1 regex_practice.txt > command_results.txt
