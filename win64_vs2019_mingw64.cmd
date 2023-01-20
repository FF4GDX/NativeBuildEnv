@ECHO OFF
SETLOCAL
:: Edit these vars if your paths aren't default
SET _ENV_VCVARS_BAT=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat
SET _ENV_MSYS_BIN=CALL C:\msys64\msys2_shell.cmd
SET _ENV_MSYS_ARGS=-mingw64 -defterm
:: Internal vars
:: This will execute check-env.sh inside msys2 from PWD then start interactive bash from home
REM SET _ENV_MSYS_ARGS_EX=-here -use-full-path -c "./check-env.sh; cd ~; bash"
SET _ENV_MSYS_ARGS_EX=-here -use-full-path -c "./check-env.sh; bash"

echo ~~~~ 
:: Ensure vcvars script exists, call if so
IF EXIST "%_ENV_VCVARS_BAT%" (
    echo ~~~~ Calling vcvars...
    echo ~~~~ 
    CALL "%_ENV_VCVARS_BAT%"
) ELSE (
    echo ~~~~ Error! Could not find "%_ENV_VCVARS_BAT%"
    echo ~~~~     ...consider updating the var in this script to suit your environment. Or install the missing VS2019 native build tools.
    echo ~~~~ 
    GOTO END
)


:: SET VARS [todo: var-ize this]
:: jdk 8
::SET PATH=%CD%\zulu8.66.0.15-ca-jdk8.0.352-win_x64\bin;%PATH%
::SET JAVA_HOME=%CD%\zulu8.66.0.15-ca-jdk8.0.352-win_x64
:: cmake
::SET PATH=%CD%\cmake-3.25.1-windows-x86_64\bin;%PATH%
:: mvn
SET PATH=%CD%\apache-maven-3.8.7\bin;%PATH%
:: ant
SET PATH=%CD%\apache-ant-1.10.13\bin;%PATH%
:: ninja
::SET PATH=%CD%\ninja-win;%PATH%
:: python 2.7
:: NOT WORKING, python not found?
:: Can maybe do pacman -S mingw-w64-python2
::SET PATH=%CD%\python-2.7.18.amd64;%PATH%

%_ENV_MSYS_BIN% %_ENV_MSYS_ARGS% %_ENV_MSYS_ARGS_EX%

echo ~~~~ 
echo ~~~~ MSYS2 started! [You can close this window]
echo ~~~~ 
:: close automatically
GOTO :EOF

:END
pause
