#!/bin/bash
pwd; ls; cd /home/$USER/Downloads/
pwd; ls; tar -x -f NetworkTraffic.tar.gz         # cd into Downloads to extract log file
mkdir WinCrash; mkdir Scarab; mkdir Doly\ Trojan # Makes Three Seperate Directories
 
# Using grep to output mutiple log files along with Numbered Line log files from original log file
grep -w -e SPT=2583 -e SPT=3024 -e DPT=2583 -e DPT=3024 NetworkTraffic.log > /home/$USER/Downloads/WinCrash/WinCrashPortDump.log
grep -w -e SPT=1255 -e SPT=1777 -e DPT=1255 -e DPT=1777 NetworkTraffic.log > /home/$USER/Downloads/Scarab/ScarabPortDump.log
grep -w -e DPT=1010 -e DPT=1011 -e DPT=1012 -e DPT=1015 -e DPT=1016 -e SPT=2345 -e DPT=2345 NetworkTraffic.log > /home/$USER/Downloads/Doly\ Trojan/DolyTrojanPortDump.log
grep -n -w -e SPT=2583 -e SPT=3024 -e DPT=2583 -e DPT=3024 NetworkTraffic.log > /home/$USER/Downloads/WinCrash/WinCrashPortDumpNumberedLine.log
grep -n -w -e SPT=1255 -e SPT=1777 -e DPT=1255 -e DPT=1777 NetworkTraffic.log > /home/$USER/Downloads/Scarab/ScarabPortDumpNumberedLine.log
grep -n -w -e DPT=1010 -e DPT=1011 -e DPT=1012 -e DPT=1015 -e DPT=1016 -e SPT=2345 -e DPT=2345 NetworkTraffic.log > /home/$USER/Downloads/Doly\ Trojan/DolyTrojanPortDumpNumberedLine.log
 
# Make three directories for daily logs
cd /home/$USER/Downloads/WinCrash/; pwd; ls; mkdir Daily\ logs
cd /home/$USER/Downloads/Scarab/; pwd; ls; mkdir Daily\ logs
cd /home/$USER/Downloads/Doly\ Trojan/; pwd; ls; mkdir Daily\ logs
 
 
############### WinCrash ########################################
# Starts port dumping for one seperate log file; WinCrash only, Ports 2583, 3024
cd /home/$USER/Downloads/WinCrash/; pwd; ls
for i in {1..9}
do
   echo "Making log for May $i"
   grep -w "May  $i" WinCrashPortDump.log > /home/$USER/Downloads/WinCrash/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
for i in {10..27}
do
   echo "Making log for May $i"
   grep "May $i" WinCrashPortDump.log > /home/$USER/Downloads/WinCrash/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
 
# Starts port dumping for multiple seperate daily log files; WinCrash only
cd /home/$USER/Downloads/WinCrash/Daily\ logs/; pwd; ls
wc -l /home/$USER/Downloads/WinCrash/WinCrashPortDump.log > /home/$USER/Downloads/WinCrash/WinCrashCount.log
for i in {1..27}
do
    echo "Counting for WinCrash May $i"
    wc -l May$i.log >> /home/$USER/Downloads/WinCrash/WinCrashCount.log
done
############### WinCrash ########################################
 
 
############### Scarab ##########################################
# Starts port dumping for one seperate log file; Scarab only, Ports 1255, 1777
cd /home/$USER/Downloads/Scarab/; pwd; ls
for i in {1..9}
do
   echo "Making log for May $i"
   grep -w "May  $i" ScarabPortDump.log > /home/$USER/Downloads/Scarab/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
for i in {10..27}
do
   echo "Making log for May $i"
   grep "May $i" ScarabPortDump.log > /home/$USER/Downloads/Scarab/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
 
# Starts port dumping for multiple seperate daily log files; Scarab only
cd /home/$USER/Downloads/Scarab/Daily\ logs/; pwd; ls
wc -l /home/$USER/Downloads/Scarab/ScarabPortDump.log > /home/$USER/Downloads/Scarab/ScarabCount.log
for i in {1..27}
do
    echo "Counting for Scarab May $i"
    wc -l May$i.log >> /home/$USER/Downloads/Scarab/ScarabCount.log
done
############### Scarab ##########################################
 
 
############### Doly Trojan #####################################
# Starts port dumping for one seperate log file; Doly Trojan only, Ports 1010, 1011, 1012, 1015, 1016, 2345
cd /home/$USER/Downloads/Doly\ Trojan/; pwd; ls
for i in {1..9}
do
   echo "Making log for May $i"
   grep -w "May  $i" DolyTrojanPortDump.log > /home/$USER/Downloads/Doly\ Trojan/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
for i in {10..27}
do
   echo "Making log for May $i"
   grep "May $i" DolyTrojanPortDump.log > /home/$USER/Downloads/Doly\ Trojan/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
 
# Starts port dumping for multiple seperate daily log files; Doly Trojan only
cd /home/$USER/Downloads/Doly\ Trojan/Daily\ logs/; pwd; ls
wc -l /home/$USER/Downloads/Doly\ Trojan/DolyTrojanPortDump.log > /home/$USER/Downloads/Doly\ Trojan/DolyTrojanCount.log
for i in {1..27}
do
    echo "Counting for Doly Trojan May $i"
    wc -l May$i.log >> /home/$USER/Downloads/Doly\ Trojan/DolyTrojanCount.log
done
############### Doly Trojan #######################################
