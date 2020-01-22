      ... ............... ... .......\ :+: /...................... ...
        ______ __     ______ ______ __   ______ ______     __ ______ 
       |  __  |  |--.|      |    __|  |_|      |      |.--|  |__    |
       |__    |     ||  --  |__    |   _|   ---|  --  ||  _  |__    |
       |______|__|__||______|______|____|______|______||_____|______|
      ... ............... ... .......: :-: :...................... ...

# avrpt
AVR Project Tool - is organizing my Arduino Projects - it create blank Scripts, debug the Code, compile and upload the finish Code to Arduino Uno

This is my first github-respository. Sorry for my bad english, iam a german guy and i not so often speak english :D
avrpt is my first published Program. It is programmed in Bash and use 'Screen' and 'Arduino-mk' to organize my Arduino-Projects. I was programming and testing it with my Computer on a Ubuntu/KUbuntu OS, with my Arduino Uno (Arduino Genuino).
This Program is complete Open Source Code! Maybe you can help me, to make this Program better.
If you will contact me, you can Mail me. Please recomment. I hope you enjoy.

# About AVR Project Tool
This Tool can create, edit, compile and upload new Projects to Arduino Uno. Maybe in the Future it can handle some other Boards. I was programming it in Linux-Bash. This program is in the Beta-Phase! You use it on your own risk!
If you find some Bugs, please comment or fix it. This Program is completely Open Source. If you touch, please update the Versionnumber and add your Name with an valid Email-Address inside the Program and let stay my Brandmarks inside it :)
Thanks!

# Syntax
Did not use this Program with Superuser(root) Permissions! It is organizing self the Permissions if its needed.

 NAME:            AVR Project Tool
 
 DESCRIPTION:     avrpt is organizing Arduino Uno Projects
 
 AUTHOR:          George Host - ghost.mobilphone@gmail.com
 
 DATE:            01-22-20	16.55.00
 
 VERSION:         0.9.95

 USAGE:           avrpt { -m | -h | -v } [project_name] { -c | -e | -r | -d | -f / -u }
                  avrpt { --monitor | --help | --version } [project_name] { --create | --edit | --remove | --debug / --compile | --flash / --upload }

'project_name' is the Name for your Project and Main-Script, for Example use 'hello_world' as PROJECT_NAME, !NOTE!  please only use 'lower-cases' and 'underlines' for your PROJECT_NAME, like 'my_first_sketch' or so...

'-m' OR '--monitor' is show you the Serial-Output when your Arduino is connected, this is using the 'screen' Command to show you the Output from Arduino

'-h' OR '--help' show you this Screen here

'-v' OR '--version' show you the actual Versionnumber of this Program, !NOTE!  when u use the short usage will only Output the Number

'-c' OR '--create' will start a new Project and create the needed Directorys and other Files

'-e' OR '--edit' open the your Script in the 'NANO'-Editor, !NOTE!  you can not edit the Example-File 'hello_world', but the Program will show you what is written inside

'-r' OR '--remove' is normaly the last Option when you finished all your Work, it removes your Project from the Computer and delete the Directorys and Files

'-d' OR '--debug' this Option is debugging your Script inside the Mainfile and complete compiling, the Code. It use 'Arduino-mk' to create all needed Files and Bootloader for your Arduino, !NOTE!  you can change the Syntax and use '--compile' as --debug. It means the same
'-f' OR '--flash' will flash your compiled Program into your connected Arduino and cleanup the, debugged files from your Project-Folder automaticly, !NOTE!  you can change the Syntax and use '-u' as -f or '--upload' as --flash. It means the same
              
Sorry for my bad english. I try to write better next time.
greetz
