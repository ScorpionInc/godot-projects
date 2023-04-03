echo off
color 0A
cls
echo.
echo  This script deletes all files that end with the file extension .import
echo  Within the same directory as this batch file.
echo  Proceeding may or may not be reversable(Depends on your file system/settings).
echo.
pause
del *.import
echo.
echo  Script has completed.
echo.
pause