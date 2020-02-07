#!/bin/bash
# Authors : Michelle Kim & Gabriela Ramirez
# Date: 2/7/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
#prompt user to input a file name and regular expression and store user input
echo "Input a file name:"
read filename
echo "Input a regular expression:"
read regex
#search the file with the given expression
grep $regex regex_practice.txt
#output number of phone numbers in regex_practice.txt
grep -c "[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" regex_practice.txt
#count number of emails
grep -c "@" regex_practice.txt
#list of phone numbers in "303" area code
grep "303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" regex_practice.txt
#store a list of emails to new file
grep "geocities.com" regex_practice.txt >> email_results.txt
#add and commit on git
git add email_results.txt
git commit -m "email results from grep practice"


