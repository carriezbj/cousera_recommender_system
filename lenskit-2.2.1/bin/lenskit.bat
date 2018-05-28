@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  lenskit startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and LENSKIT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\dist-2.2.1.jar;%APP_HOME%\lib\slf4j-api-1.7.6.jar;%APP_HOME%\lib\annotations-2.0.1.jar;%APP_HOME%\lib\lenskit-cli-2.2.1.jar;%APP_HOME%\lib\lenskit-all-2.2.1.jar;%APP_HOME%\lib\argparse4j-0.4.4.jar;%APP_HOME%\lib\logback-classic-1.0.13.jar;%APP_HOME%\lib\jansi-1.8.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.6.jar;%APP_HOME%\lib\lenskit-core-2.2.1.jar;%APP_HOME%\lib\lenskit-eval-2.2.1.jar;%APP_HOME%\lib\lenskit-knn-2.2.1.jar;%APP_HOME%\lib\lenskit-svd-2.2.1.jar;%APP_HOME%\lib\lenskit-predict-2.2.1.jar;%APP_HOME%\lib\lenskit-slopeone-2.2.1.jar;%APP_HOME%\lib\logback-core-1.0.13.jar;%APP_HOME%\lib\lenskit-api-2.2.1.jar;%APP_HOME%\lib\grapht-0.10.0.jar;%APP_HOME%\lib\guava-18.0.jar;%APP_HOME%\lib\vectorz-0.41.2.jar;%APP_HOME%\lib\commons-compress-1.8.jar;%APP_HOME%\lib\auto-service-1.0-rc2.jar;%APP_HOME%\lib\lenskit-groovy-2.2.1.jar;%APP_HOME%\lib\groovy-all-2.1.5.jar;%APP_HOME%\lib\joda-time-2.3.jar;%APP_HOME%\lib\commons-cli-1.2.jar;%APP_HOME%\lib\ant-1.8.4.jar;%APP_HOME%\lib\hamcrest-library-1.3.jar;%APP_HOME%\lib\lenskit-data-structures-2.2.1.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\edn-java-0.4.4.jar;%APP_HOME%\lib\randomz-0.3.0.jar;%APP_HOME%\lib\mathz-0.3.0.jar;%APP_HOME%\lib\xz-1.5.jar;%APP_HOME%\lib\auto-common-0.3.jar;%APP_HOME%\lib\ant-launcher-1.8.4.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\fastutil-6.6.1.jar;%APP_HOME%\lib\commons-lang3-3.3.jar

@rem Execute lenskit
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %LENSKIT_OPTS%  -classpath "%CLASSPATH%" org.grouplens.lenskit.cli.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable LENSKIT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%LENSKIT_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
