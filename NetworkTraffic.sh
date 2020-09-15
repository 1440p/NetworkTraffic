#!/bin/bash
# This is a Network Traffic Lab done for DFSC2136 / DF and IA Fundamentals II
pwd
ls
cd /home/kali/Downloads/
pwd
ls
tar -x -f NetworkTraffic.tar.gz
mkdir WinCrash
mkdir Scarab
mkdir Doly\ Trojan
grep -w -e SPT=2583 -e SPT=3024 -e DPT=2583 -e DPT=3024 NetworkTraffic.log > /home/kali/Downloads/WinCrash/WinCrashPortDump.log
grep -w -e SPT=1255 -e SPT=1777 -e DPT=1255 -e DPT=1777 NetworkTraffic.log > /home/kali/Downloads/Scarab/ScarabPortDump.log
grep -w -e DPT=1010 -e DPT=1011 -e DPT=1012 -e DPT=1015 -e DPT=1016 -e SPT=2345 -e DPT=2345 NetworkTraffic.log > /home/kali/Downloads/Doly\ Trojan/DolyTrojanPortDump.log
grep -n -w -e SPT=2583 -e SPT=3024 -e DPT=2583 -e DPT=3024 NetworkTraffic.log > /home/kali/Downloads/WinCrash/WinCrashPortDumpNumberedLine.log
grep -n -w -e SPT=1255 -e SPT=1777 -e DPT=1255 -e DPT=1777 NetworkTraffic.log > /home/kali/Downloads/Scarab/ScarabPortDumpNumberedLine.log
grep -n -w -e DPT=1010 -e DPT=1011 -e DPT=1012 -e DPT=1015 -e DPT=1016 -e SPT=2345 -e DPT=2345 NetworkTraffic.log > /home/kali/Downloads/Doly\ Trojan/DolyTrojanPortDumpNumberedLine.log
cd /home/kali/Downloads/WinCrash/
pwd
ls
mkdir Daily\ logs
cd /home/kali/Downloads/Scarab/
pwd
ls
mkdir Daily\ logs
cd /home/kali/Downloads/Doly\ Trojan/
mkdir Daily\ logs
 
cd /home/kali/Downloads/WinCrash/
pwd
ls
for i in {1..9}
do
   echo "Making log for May $i"
   grep -w "May  $i" WinCrashPortDump.log > /home/kali/Downloads/WinCrash/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
for i in {10..27}
do
   echo "Making log for May $i"
   grep "May $i" WinCrashPortDump.log > /home/kali/Downloads/WinCrash/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
cd /home/kali/Downloads/WinCrash/Daily\ logs/
pwd
ls
echo > WinCrashCount.log
wc -l /home/kali/Downloads/WinCrash/WinCrashPortDump.log > /home/kali/Downloads/WinCrash/WinCrashCount.log
for i in {1..27}
do
    echo "Counting for WinCrash May $i"
    wc -l May$i.log >> /home/kali/Downloads/WinCrash/Daily\ logs/WinCrashCount.log
done
 
cd /home/kali/Downloads/Scarab/
pwd
ls
for i in {1..9}
do
   echo "Making log for May $i"
   grep -w "May  $i" ScarabPortDump.log > /home/kali/Downloads/Scarab/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
for i in {10..27}
do
   echo "Making log for May $i"
   grep "May $i" ScarabPortDump.log > /home/kali/Downloads/Scarab/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
cd /home/kali/Downloads/Scarab/Daily\ logs/
pwd
ls
echo > ScarabCount.log
wc -l /home/kali/Downloads/Scarab/ScarabPortDump.log > /home/kali/Downloads/Scarab/ScarabCount.log
for i in {1..27}
do
    echo "Counting for Scarab May $i"
    wc -l May$i.log >> /home/kali/Downloads/Scarab/Daily\ logs/ScarabCount.log
done
 
cd /home/kali/Downloads/Doly\ Trojan/
pwd
ls
for i in {1..9}
do
   echo "Making log for May $i"
   grep -w "May  $i" DolyTrojanPortDump.log > /home/kali/Downloads/Doly\ Trojan/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
for i in {10..27}
do
   echo "Making log for May $i"
   grep "May $i" DolyTrojanPortDump.log > /home/kali/Downloads/Doly\ Trojan/Daily\ logs/May$i.log
   echo "Log for May $i Success"
done
cd /home/kali/Downloads/Doly\ Trojan/Daily\ logs/
pwd
ls
echo > DolyTrojanCount.log
wc -l /home/kali/Downloads/Doly\ Trojan/DolyTrojanPortDump.log > /home/kali/Downloads/Doly\ Trojan/DolyTrojanCount.log
for i in {1..27}
do
    echo "Counting for Doly Trojan May $i"
    wc -l May$i.log >> /home/kali/Downloads/Doly\ Trojan/Daily\ logs/DolyTrojanCount.log
done
