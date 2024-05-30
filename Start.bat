@echo off

:Start

REM Downloading the latest release of Lavalink
echo Downloading Lavalink JAR...
curl -sSfL "https://github.com/lavalink-devs/Lavalink/releases/download/3.7.12/Lavalink.jar" -o Lavalink.jar
if %errorlevel% neq 0 (
    echo Failed to download Lavalink JAR. Exiting.
    exit /b 1
)

REM Check if the download was successful
if not exist "Lavalink.jar" (
    echo Lavalink JAR not found. Exiting.
    exit /b 1
)

echo Lavalink JAR downloaded successfully.

REM Run Lavalink
echo Starting Lavalink...
java -jar "Lavalink.jar"
if %errorlevel% neq 0 (
    echo Failed to start Lavalink.
    exit /b 1
) else (
    echo Lavalink started successfully.
)

goto Start
