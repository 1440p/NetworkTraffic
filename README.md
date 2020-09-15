# NetworkTraffic
This is a Network Traffic Lab for DFSC2136 / DF and IA Fundamentals II

All that needs to be done is to place NetworkTraffic.tar.gz and NetworkTraffic.sh in Downloads directory

Pull up terminal, cd into Downloads, then call

$ bash NetworkTraffic.sh

you can actually call/place NetworkTraffic.sh from any directory you want, so long as the gzip is in Downloads

Preliminary Documentation below:

For Windows Command Prompt: [/Optional Command]
FIND "string" filename (loads all text lines containing string)
FIND /C "string" filename (loads the count of lines found containing string)

For Kali Linux Terminal Emulator: [-Optional Command]
tar -x -v -f gzipfilename
(extract the contents in the gzip, -x option is needed for extraction
-v option outputs progress of archive file
-f is needed to determine what is the filename, expects input filename)

head filename (outputs first 10 lines to terminal)
tail filename (outputs last 10 lines to terminal)
cat filename (outputs all lines to terminal)
grep 'string' filename (loads all textlines containing string)
grep -e 'string1' -e 'string2' -e 'string3' filename (takes multiple strings)
grep -c filename (loads the count of lines found containing string)
grep -n -e 'string' filename (outputs the specific line 
WinCrash uses Ports
2583 X
3024 X
grep -c -w -e SPT=2583 -e SPT=3024 -e DPT=2583 -e DPT=3024 NetworkTraffic.log

Scarab uses Ports
1255 X
1777 X
grep -c -w -e SPT=1255 -e SPT=1777 -e DPT=1255 -e DPT=1777 NetworkTraffic.log

Doly Trojan uses Ports
1011 X
1012 X

1010 X
1015 X
1016 X

2345 X

grep -c -e DPT=1011 -e DPT=1012 NetworkTraffic.log
grep -c -w -e DPT=1010 -e DPT=1011 -e DPT=1012 -e DPT=1015 -e DPT=1016 -e SPT=2345 -e DPT=2345 NetworkTraffic.log




grep -w -e SPT=2583 -e SPT=3024 -e DPT=2583 -e DPT=3024 NetworkTraffic.log > /home/kali/Downloads/WinCrash/WinCrashPortDump.log
grep -w -e SPT=1255 -e SPT=1777 -e DPT=1255 -e DPT=1777 NetworkTraffic.log > /home/kali/Downloads/Scarab/ScarabPortDump.log
grep -w -e DPT=1010 -e DPT=1011 -e DPT=1012 -e DPT=1015 -e DPT=1016 -e SPT=2345 -e DPT=2345 NetworkTraffic.log > /home/kali/Downloads/Doly\ Trojan/DolyTrojanPortDump.log

grep -n -w -e SPT=2583 -e SPT=3024 -e DPT=2583 -e DPT=3024 NetworkTraffic.log > /home/kali/Downloads/WinCrash/WinCrashPortDumpNumberedLine.log
grep -n -w -e SPT=1255 -e SPT=1777 -e DPT=1255 -e DPT=1777 NetworkTraffic.log > /home/kali/Downloads/Scarab/ScarabPortDumpNumberedLine.log
grep -n -w -e DPT=1010 -e DPT=1011 -e DPT=1012 -e DPT=1015 -e DPT=1016 -e SPT=2345 -e DPT=2345 NetworkTraffic.log > /home/kali/Downloads/Doly\ Trojan/DolyTrojanPortDumpNumberedLine.log
