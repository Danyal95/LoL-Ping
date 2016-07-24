:: Program to determine the ping for the popular game League of Legends.
:: Created by Danyal Soharwardi

:: ------------- CONTACT --------------------
:: Email: "danyal.work1@gmail.com"
:: Twitter: "https://twitter.com/deadfromzed"

@echo off

:: Displays servers for user to choose from. The servers are NA = North America, 
:: EUW = Western Europe, EUNE = Northeastern Europe, OCE = Oceania, LAN = Local Area Network .
:HOME
cls
echo ----- Hello %username%, Welcome to LoL Ping! -----
echo.
echo.
echo What is your LoL server? :
echo.
echo.
echo a) NA 
echo.
echo b) EUW 
echo.
echo c) EUNE
echo.
echo d) OCE
echo.
echo e) LAN
echo.
echo.
echo Type your answer below and press ENTER . . .
echo.

:: Reads answer and then checks corresponding ping. If input does not much it gives an error.
set /p do=  
if %do% == A goto NA
if %do% == a goto NA
if %do% == B goto EUW
if %do% == b goto EUW
if %do% == C goto EUNE
if %do% == c goto EUNE
if %do% == D goto OCE
if %do% == d goto OCE
if %do% == E goto LAN
if %do% == e goto LAN
echo.
cls
echo Invalid value = %do%
echo.
pause
cls
goto HOME

:: Outputs ping and once complete, gives option for user to test ping again or go back.
:NA
cls
echo Your ping for the NA server is:
echo.
ping 104.160.131.3 
echo.
echo.
echo Check again? (Y/N)
echo.
set /p ans=
if %ans% == Y goto NA
if %ans% == y goto NA
if %ans% == N goto HOME
if %ans% == n goto HOME

:EUW
cls
echo Your ping for the EUW server is:
echo.
ping 104.160.141.3
echo.
echo.
echo Check again? (Y/N)
echo.
set /p ans=
if %ans% == Y goto EUW
if %ans% == y goto EUW
if %ans% == N goto HOME
if %ans% == n goto HOME

:EUNE
cls
echo Your ping for the EUNE server is:
echo.
ping 104.160.142.3
echo.
echo.
echo Check again? (Y/N)
echo.
set /p ans=
if %ans% == Y goto EUNE
if %ans% == y goto EUNE
if %ans% == N goto HOME
if %ans% == n goto HOME

:OCE
cls
echo Your ping for the OCE server is:
echo.
ping 104.160.156.1
echo.
echo.
echo Check again? (Y/N)
echo.
set /p ans=
if %ans% == Y goto OCE
if %ans% == y goto OCE
if %ans% == N goto HOME
if %ans% == n goto HOME

:LAN
cls
echo Your ping for the LAN is:
echo.
ping 104.160.136.3
echo.
echo.
echo Check again? (Y/N)
echo.
set /p ans=
if %ans% == Y goto OCE
if %ans% == y goto OCE
if %ans% == N goto HOME
if %ans% == n goto HOME