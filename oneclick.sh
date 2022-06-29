#! /bin/bash
#
echo "Creating variables for use throughout the Postgres installation process"

packages=('csh' 'tcsh' 'lib32z1' 'libxtst6:i386' 'libreadline-dev' 'zlib1g-dev' 'ssh' 'aptitude')

#log file to store to maintain depencies installation history  

logfile='psql-log'

# rfolder is the install directory for PostgreSQL
rfolder='/usr/local/pgsql'

# dfolder is the root directory for various types of supporting data files

dfolder='/data/postgresdata'

#gitloc=

#apt-get update is used to update latest security patches 
apt-get update -y >>$logfile

echo "Installing PostgreSQL dependencies"
apt-get install ${packages[@]} -y >> $logfile

#echo comment is used to print the privious status 
#echo "update is over"

# csh package is important to run collabland application 
#apt-get install csh

#echo "**************************************"

#tcsh is important to install for collabland

#apt-get install tcsh

#echo "***************************************"

#dpkg is used to update 32 bit arch  into  64 bit OS
#dpkg --add-architecture i386

#echo "dpkg package added"

#apt-get update

#echo "************************************"

#lib32z1 is library packages for collabland

#apt-get install lib32z1

#echo "***********************************"

#libxtst6:i386 us library packages for collabland

#apt-get install libxtst6:i386

#libreadkine-dev is library file for collabland

#apt-get install libreadline-dev

#zlib1g-dev is library package for  postgressql

#apt-get install zlib1g-dev

#ssh is sechure shell socket its not come with Boss OS

#apt-get install ssh
