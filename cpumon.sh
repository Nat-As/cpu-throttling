#!/bin/bash

install() {
sudo dpkg --configure -a
sudo apt-get install lm-sensors
printf "ANSWER YES TO ALL OPTIONS BELOW!\n"
sleep 5
sudo sensors-detect
}

monitor() {
while :
    do
    sensors
    printf "Press Ctrl+C to exit\n"
    sleep 1
    clear
done
}

clear

cat << "EOF"
  ______   _______   __    __          __       __   ______   __    __ 
 /      \ /       \ /  |  /  |        /  \     /  | /      \ /  \  /  |
/$$$$$$  |$$$$$$$  |$$ |  $$ |        $$  \   /$$ |/$$$$$$  |$$  \ $$ |
$$ |  $$/ $$ |__$$ |$$ |  $$ | ______ $$$  \ /$$$ |$$ |  $$ |$$$  \$$ |
$$ |      $$    $$/ $$ |  $$ |/      |$$$$  /$$$$ |$$ |  $$ |$$$$  $$ |
$$ |   __ $$$$$$$/  $$ |  $$ |$$$$$$/ $$ $$ $$/$$ |$$ |  $$ |$$ $$ $$ |
$$ \__/  |$$ |      $$ \__$$ |        $$ |$$$/ $$ |$$ \__$$ |$$ |$$$$ |
$$    $$/ $$ |      $$    $$/         $$ | $/  $$ |$$    $$/ $$ | $$$ |
 $$$$$$/  $$/        $$$$$$/          $$/      $$/  $$$$$$/  $$/   $$/ 
                                                                       
-----------------------------------------------------------------------
By: Captain_Cozmos
IAW: Nat-As
-----------------------------------------------------------------------

EOF
printf "Type install for first use.\n"
printf "Type monitor to monitor cpu.\n"
printf "==>"
read noitpo
$noitpo
