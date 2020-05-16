cup all -y
timeout /t 3
:: Add taskkills below for apps that pop-up once updated i.e. Brave Browser
taskkill /im brave.exe /F
SET USER=Public
:start
echo %USER%
:: Add full paths to shortcuts below for apps that pop-up once updated i.e. Brave Browser
IF EXIST "C:\Users\%USER%\Desktop\Brave.lnk" DEL /F "C:\Users\%USER%\Desktop\Brave.lnk" && ECHO Deleting Brave Shortcut\n

if %USER%==%username% (goto end)

SET USER=%username%

goto start
:end
timeout /t 3
