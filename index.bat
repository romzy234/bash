@echo off

title porn virus -- testing phase 

echo Testing For Internet Connection 
rem ping https://www.google.com/
rem ping -c 1000 -i 0.1 www.google.com

rem prompt to check for ping or close program 
echo Type one '1' to test for inernet conection 
echo And  '2' to close Shell 
set /p choice= "Please Select one of the above options :" 

rem echo '%choice%'

rem if statement to handle pervious prompt

if %choice% == '1' goto :testConnection
if %choice% == '2' goto :gracefullExit
rem if  %choice% == '1' | %choice% == '2' goto :forceExit  



:testConnection
cls
echo "Testing The connection "
goto :ping-g
exit /b 0


:gracefullExit
cls
title closing the Shell 
echo "Closing Shell"
exit /b 0

:forceExit 
cls
title Forcefully closing the Shell
echo "Closing Shell"
exit /b 0


:ping-g
title Making a Post request to google 
ping www.google.com -n 9

exit /b 0

pause