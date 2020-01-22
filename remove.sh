#!/bin/bash
##
## NAME:            Remove.sh
##
## DESCRIPTION:     Install-Routine for AVR Project Tool
##
## AUTHOR:          George Host - ghost.mobilphone@gmail.com
##
## DATE:            01-22-20 	21.04.00
##
## VERSION:         0.1.0
##
## USAGE:           sudo setup.sh 'yourusername'
##
USER=$1
ERC=0
HEAD=" \e[36mAVR-pt\e[39m  U N I N S T A L L E R"
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
    echo "   Try ./remove.sh yournamehere"
    echo ""
    ERC=2
    abort_setup
fi
echo -e $WORK"uninstall avrpt..."

    echo -e $WORK"  search Directory..."
    cd /home/$USER/$PROG
    echo -e $DONE"OK"
    echo -e $WORK"  deleting files..."
    rm *.*
    echo -e $DONE"OK"
    echo -e $WORK"  uninstalling tool..."
    sudo rm /usr/bin/avrpt
    echo -e $DONE"OK"
    exit 0
