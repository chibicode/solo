#! /bin/bash
 
################################################################################
# Cleanstart Graphic Tools 2015
# Changed to using apt instead of aptitude by @pathumego for Ubuntu-Grphics-Suit
#
# based on Ubuntu (> 9.10) post installation script
# by VoidAndAny
#
# based on cleanstart-packages.list.sh by silverwav - OpenPGP key:03187548 15 Apr 2009
#
# this script read a config file and :
#     add PPA with add-apt-repository
#    add other repositories (not PPA) by writing them in a .list file in /etc/apt/source.list.d
#    add GPG keys
#     install package using aptitude install
#     remove pacakge using aptitude remove
#
################################################################################
#
# Usage:
# installation.sh
# (reads a file called packages.list by default).
# or
# installation.sh <filename>
#
# Any line starting with a # is ignored as are Blank lines.
# Line beginning by "ppa:" followed by a are used to add PPA repository
# Line beginning by "deb http", containing ">" followed by a file name with ".list" extension are used to add repository in /etc/apt/sources.list.d/
# Line beginning by "key:" followed by a key id are used to add GPG key from keyserver.ubuntu.com
# Line beginning by "http:", ending by ".gpg" are used to download and add GPG key froman URL
# Other lines are package list
#
################################################################################
clear
echo "--------------------------------------------------------------------------------"
echo "   (cleanstart) Script for installing packages (client) to Install Grphics Tools                "
echo "--------------------------------------------------------------------------------"
 
# ensure script is run as root/sudo
if [ "$(id -u)" != "0" ]
then
 echo ""
 echo "Must execute the script as root user."
 echo "--------------------------------------------------------------------------------"
 exit 1
fi
 
# check the argument count
if [ $# -gt "1" ]
then`
 echo ""
 echo "Only one file with package names allowed."
 echo "--------------------------------------------------------------------------------"
 exit 1
fi
 
################################################################################
#### Main
#### args: (1)
#### 1. [out] List of input package names
################################################################################
 
CONFIG_FILE=""
# package names to be installed
PACKAGE_NAME_LIST=""
 
# check if filename was supplied as comand line parameter
if [ $# -eq "1" ]
then
 CONFIG_FILE=$1
else
 CONFIG_FILE=grphictools.list
fi
 
PACKAGE_NAME_LIST=$(cat $CONFIG_FILE | grep -v -E "(^#)|(^ppa:)|(^deb http)|(^-)|(^key:)|(^http:.*\.gpg)" | awk -F'#' '{ print $1}')
REMOVE_PACKAGE_LIST=$(cat $CONFIG_FILE | grep -E "^-" | awk -F'#' '{ print $1}' | sed 's/^-//g')
PPA_NAME_LIST=$(cat $CONFIG_FILE | grep -E "^ppa:" | awk -F'#' '{ print $1}')
REPOSITORY_KEY_LIST=$(cat $CONFIG_FILE | grep -E "^key:" | awk -F'#' '{ print $1}' | sed 's/^key://g')
GPG_URL_LIST=$(cat $CONFIG_FILE | grep -E "^http:.*\.gpg" | awk -F'#' '{ print $1}')
 
echo ""
echo "Installing PPA:" ${PPA_NAME_LIST}
echo "--------------------------------------------------------------------------------"
 
for i in $(echo  $PPA_NAME_LIST ); do
 add-apt-repository $i;
done
 
echo ""
echo "Installing other repositories (not PPA) "
echo "--------------------------------------------------------------------------------"
 
cat $CONFIG_FILE | grep -E "^deb http:.*>.*\.list" | awk -F'>' '{gsub(/[[:space:]]*/,"",$2) ; print $1 > "/etc/apt/sources.list.d/"$2 }'
 
echo ""
echo "Adding GPG key of other repositories (not PPA) "
echo "--------------------------------------------------------------------------------"
 
for i in $(echo $REPOSITORY_KEY_LIST ); do
 apt-key adv --keyserver keyserver.ubuntu.com --recv-key $i;
done
 
for i in $(echo $GPG_URL_LIST ); do
 wget -O - $i | sudo apt-key add - ;
done
 
echo ""
echo "Updating... "
echo "--------------------------------------------------------------------------------"
 
apt-get update
 
echo ""
echo "Installing packages:" ${PACKAGE_NAME_LIST}
echo "--------------------------------------------------------------------------------"
# Add le -y
apt-get install ${PACKAGE_NAME_LIST}
 
echo ""
echo "Uninstalling packages:" ${REMOVE_PACKAGE_LIST}
echo "--------------------------------------------------------------------------------"
 
apt-get remove ${REMOVE_PACKAGE_LIST}
 
echo ""
echo "DONE: Enjoy your Libre Grphics Suite"
echo "--------------------------------------------------------------------------------"
