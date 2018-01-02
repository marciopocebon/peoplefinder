
#!/bin/bash
#People reconnaissance script
#Created by Mattia Campagnano on Sat Feb 6 00:45:15 EST 2016
#Updated version created on Tue Jan 2 17:39:58 EST 2018

clear
echo

echo -n "Enter first name: "
read fname

#Throws an error message in case no first name is entered and stops the script

if [ -z $fname ]; then
  echo "Please enter your first name";
  exit 1
fi

echo -n "Enter last name: "
read lname

#throws an error message in case no last name is entered
#and exits the program with errors.

if [ -z $lname ]; then
  echo "Please enter your last name";
  exit 1
fi

echo
read -p "Press <Enter> key to continue"
#Launches Chrome and opens a number of specific research engines.

cd /Applications/Google\ Chrome.app/
cd Contents/MacOS/
./Google\ Chrome -new-tab http://www.pipl.com/search/?q=$fname+$lname/ &
./Google\ Chrome -new-tab http://www.spokeo.com/$fname-$lname/ &
./Google\ Chrome -new-tab http://www.zabasearch.com/people/$fname+$lname/ &
./Google\ Chrome -new-tab www.peekyou.com/$fname_$lname/ &
