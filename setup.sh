#!/bin/bash
##
## NAME:            Setup.sh
##
## DESCRIPTION:     Install-Routine for AVR Project Tool
##
## AUTHOR:          George Host - ghost.mobilphone@gmail.com
##
## DATE:            01-22-20 	17.55.00
##
## VERSION:         0.1.0
##
## USAGE:           sudo setup.sh 'yourusername'
##
USER=$1
ERC=0
HEAD=" \e[36mAVR-pt\e[39m  I N S T A L L E R"
WORK="\e[32m! \e[39m "
ERR="\e[31m!E\e[39m "
FERR="\e[31m!F\e[39m "
ABR="\e[31m!A\e[39m "
DONE="\e[32m >\e[39m "
PROG=".avrpt"
TFILE=""

function abort_setup(){
	if [ $ERC = 0 ]; then
		exit 0
	elif [ $ERC = 1 ]; then
		echo -e $ERR"Error, $TFILE not found."
		echo -e $ABR"Abort Setup"
		exit 1
	elif [ $ERC = 2 ]; then
		echo -e $FERR"FATAL ERROR"
		if [ "$TFILE" = "avrpt" ]; then
			echo "   Program not found."
		fi
		echo -e $ABR"Setup is not possible"
		exit 2
	else
		echo -e $ERR"Unknown Error in Setup-Routine"
		echo -e $ABR"Setup is not possible"
		exit 3
	fi
}

clear
echo ""
echo "      ... ............... ... .......\ :+: /...................... ..."
echo "        ______ __     ______ ______ __   ______ ______     __ ______ "
echo "       |  __  |  |--.|      |    __|  |_|      |      |.--|  |__    |"
echo "       |__    |     ||  --  |__    |   _|   ---|  --  ||  _  |__    |"
echo "       |______|__|__||______|______|____|______|______||_____|______|"
echo "      ... ............... ... .......: :-: :...................... ..."
echo "ver0.1.0                 ( oo)      (c)ghost.mobilphone@gmail.com (o -)"           
echo "---------------------ooO--(_)--Ooo----------------------------ooO--(_)--Ooo-"
echo ""
echo -e $HEAD
echo "----------------------------------------------------------------------------"
echo ""
if [ "$1" = "" ]; then
    echo -e $ERR"can not read your Home-Directory"
    echo "   You must enter your existing Username for Setup-Acess"
    echo ""
    echo "   Try ./setup.sh yournamehere"
    echo ""
    ERC=2
    abort_setup
fi
echo -e $WORK"check needed files..."
if [ ! -e "README.md" ]; then
	TFILE="README.md"
	ERC=1
	abort_setup
elif [ ! -e "LICENSE" ]; then
	TFILE="LICENSE"
	ERC=1
	abort_setup
elif [ ! -e "CHANGELOG" ]; then
	TFILE="CHANGELOG"
	ERC=1
	abort_setup
elif [ ! -e "avrpt" ]; then
	TFILE="avrpt"
	ERC=2
	abort_setup
else
    echo -e $WORK"  create Directory..."
    mkdir /home/$USER/$PROG
    echo -e $DONE"OK"
    echo -e $WORK"  copying files..."
    cp ./README.md /home/$USER/$PROG/README.md
    cp ./CHANGELOG /home/$USER/$PROG/CHANGELOG
    cp ./LICENSE /home/$USER/$PROG/LICENSE
    cp ./setup.sh /home/$USER/$PROG/setup.sh
    cp ./remove.sh /home/$USER/$PROG/remove.sh
    echo -e $DONE"OK"
    echo -e $WORK"  installing tool..."
    sudo cp ./avrpt /usr/bin/avrpt
    echo -e $DONE"OK"
    echo -e $WORK"  installing used programs too..."
    sudo apt-get install arduino-mk -y
    sudo apt-get install screen -y
    exit 0
fi
exit
