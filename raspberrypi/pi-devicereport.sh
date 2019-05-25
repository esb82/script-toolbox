#!/bin/bash -e
clear
# Set color of logo
RED='\033[0;31m'
NC='\033[0m' # No Color
tput setaf 3
cat << EOF
                                      .    .:d0Ox;,,'.
                                  .:dOOOx:.OWWXKOxdx00k,..       .:,.
                              .;oOOOOOOOOOOOk0OOoocllol,'',:;..  oOKkkdo;.
                             ,MWNK0OxkO00O0OOkklc;'',,llol:ccooo:......;okKkl,
                  .         ;KMMMNdk0K0OOkkoldlc:do.cxooood:,:cc;..........,cx00x:.
              .:okxxoc,':. :OXNXko'..'lxOoo:;'.'lcxdkdloddxxl;:,;:c:;,.........';oO0o;.
          .;okkkkkkkkkkkkOOx;.,o0XXOo;..:c::::,oc;ocddolkk0lxkool::::cdlc,'.......,oOKl
       'lkOOOOkkkkkkkkkkkkkkkxl:;:coOXX0xl;cc:locoolxdddkxkxOxloolcldxxdkddl:;'.....'.
    :xO00000OOOOOOOOOOOOOOOOOOOOkd:. .'cxKN0xdoOkO0Odolllooodl;;::coOOOkkk0xlloc:;,':dl;'.     .c  .
   .MMWNXK0000000O0OOOOOOOOOOkdoc; .:c,. ..,;o0XWNdlllllll:;,;::::::;cldxOkOkdo::cccxkddookO;,xO;,o.
   lWclONMMWNXK000000000Odlllc:clodkOkkkxl;.....:olllddl;'';;;;:::c:clc;,;codllcllldOkkddxxxxxkxodc
   Xk.   .:xXMMWNXK000kl;;;,:lddxOOOOOkkkkkkkoc,cooloooddc;,,'',,:lc:;:;,,,:oddokk0kxddxxxxddoool:dkc.
  .MO'.      .;dKWMM0:,';:o0Kk:d0kddkkkOkkkkkkOOkxooxdxddoxdol:;,'',,,,,;cokxdk0koxdodxxxdooooc;;;okx.
  dX.            .kMl.';Nc.':dOKKOOOkloOOkkOOkxo::dxxxdxdxxxxkxkkoc;,,cldxoooooooxxdddddlllc:;;:cxl.
 '0:xl,          .NX..'kK...:;;,;lkKxkOOxdkdc;,;;cododkkkkkkddoxdooolloooooddooolloolloolc;;;:ld:.
 'kddlc.         lMd..'Nxol:;;:.',;;:oxkxc;,',;;clxdkkkkkkkkkkkxxdxooooooxkxddocclocllc:,;:cdo,
    ,ox:.     ,'.KW'..oXKMMW0x;.   .',.ll..c;;;:oxdlOOkkkkkkkkkkkOkOkdoxxdolo;clclllc;;;:ld:.
        .,,,oc.ddNO...Xo:xXMMMMWKd:,...Xl;':dlokKOo0OxdxOOxOkkkkkOOOOOddlcc:colcc:;,;;cdo,
            'lxkdKl..oN. ,;;cdKWMMMMNkoX'',kK. ,,:oOKXK0x:x0OdkOOkO0XOdo:;,lolc:;;;:lxc.
                .;ldldx...'.;;;;cd0WMKXl..;Nc..:.;;;',lkOK0OxkkO0XXK0lc:'':oc;,;;cdd;
                    .;l0xc;,.  ..,;,;dX..,kK00k;;l. .',;;;co00K0KKKKx,..',c,;;:lxl.
                        .:xKkl'.   ..Xc..,WkMMMMW0l,.  ..,.;XcdKKK0kl'.  .';cdd:
                            .:x0Od:.cX...O0.,okNMMMMW0dc,..KNK0KXKk0OOkd:,cxl.
                                .:dxxc,';W:..;;;:lkXMMMMWKoWX00K0xlddoOOOx:
                                    .,ldddl';,.:',;;;lxXM0XNK0OOolodloxo'
                                        .,o0Odl.    .,;'.xNkxo:clxxxx:
                                            .;dK0x;......Nkc:loolko'
                                                .,d00x:.xXloc:ox:.
                                                     ,ldxxxxdo'
                                                         ;ll.

░░░░░░░░░░░░░░░░░░░░░░░█▀▄░█▀▀░█░█░▀█▀░█▀▀░█▀▀░░░█▀▄░█▀▀░█▀█░█▀█░█▀▄░▀█▀░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░█░█░█▀▀░▀▄▀░░█░░█░░░█▀▀░░░█▀▄░█▀▀░█▀▀░█░█░█▀▄░░█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░▀▀░░▀▀▀░░▀░░▀▀▀░▀▀▀░▀▀▀░░░▀░▀░▀▀▀░▀░░░▀▀▀░▀░▀░░▀░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
EOF
# Reset color
tput sgr 0


#https://github.com/KittyKatt/screenFetch
#screenfetch


echo -e "------------- ${RED}Time / Date (timedatectl status)${NC} -----------------------------------------------"
timedatectl status

echo -e "------------- ${RED}Hardware Informaion (cat /sys/firmware/devicetree/base/model)${NC} ------------------"
cat /sys/firmware/devicetree/base/model
echo -e ""

echo -e "------------- ${RED}CPU Informaion (cat /proc/cpuinfo)${NC} ---------------------------------------------"
cat /proc/cpuinfo

echo -e "------------- ${RED}Kernel  Informaion ${NC} ---------------------------------------------------------"
cat /proc/version
cat /proc/sys/kernel/{ostype,osrelease,version}

echo -e "------------- ${RED}CPU Informaion (lscpu)${NC} ---------------------------------------------------------"
lscpu

echo -e "------------- ${RED}CPU Informaion 'number of processing units' (nprocu)${NC} ---------------------------"
nproc

echo -e "------------- ${RED}Host Information (hostnamectl)${NC} -------------------------------------------------"
hostnamectl

echo -e "------------- ${RED}Time / Date (timedatectl status)${NC} -----------------------------------------------"
timedatectl status

echo -e "------------- ${RED}Linux Distribution ${NC} ------------------------------------------------------------"


#print the network node hostname
uname --nodename

#print the kernel release
uname --kernel-release

#print the kernel version
uname --kernel-version

#print the machine hardware name
uname --machine

#print the processor type (non-portable)
uname --processor

#print the hardware platform (non-portable)
uname --hardware-platform

#print the operating system
uname --operating-system

#print ...
systemctl list-units --type=target
systemctl list-units --type=service

echo -e "------------- ${RED}Distribution (lsb_release -a)${NC} --------------------------------------------------"
#lsb_release -a
cat /etc/*-release

echo -e "------------- ${RED}Debian Version (cat /etc/debian_version)${NC} ---------------------------------------"
cat /etc/debian_version


echo -e "------------- ${RED}Host Information (hostnamectl)${NC} -------------------------------------------------"
hostnamectl

echo -e "------------- ${RED}APT Source list (...) ${NC} ---------------------------------------------------------"
cat /etc/apt/sources.list /etc/apt/sources.list.d/*

echo -e "------------- ${Blue}Python list (ls -l /usr/bin/pyt*) ${NC} --------------------------------------------"
ls -l /usr/bin/pyt*
