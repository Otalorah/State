@echo off
setlocal

set MAVEN_PROJECTBASEDIR=%~dp0
if "%MAVEN_PROJECTBASEDIR:~-1%"=="\" set MAVEN_PROJECTBASEDIR=%MAVEN_PROJECTBASEDIR:~0,-1%

set WRAPPER_JAR=%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.jar
set WRAPPER_PROPERTIES=%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.properties

for /f "usebackq tokens=1,* delims==" %%A in (`findstr /b "wrapperUrl=" "%WRAPPER_PROPERTIES%"`) do set WRAPPER_URL=%%B

if not exist "%WRAPPER_JAR%" (
  echo Downloading Maven wrapper...
  powershell -NoProfile -ExecutionPolicy Bypass -Command "[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12; (New-Object Net.WebClient).DownloadFile('%WRAPPER_URL%','%WRAPPER_JAR%')"
  if errorlevel 1 (
    echo Failed to download Maven wrapper from %WRAPPER_URL%
    exit /b 1
  )
)

set JAVA_EXE=java
if defined JAVA_HOME set JAVA_EXE="%JAVA_HOME%\bin\java"

%JAVA_EXE% -classpath "%WRAPPER_JAR%" -Dmaven.multiModuleProjectDirectory="%MAVEN_PROJECTBASEDIR%" org.apache.maven.wrapper.MavenWrapperMain %*
endlocal
