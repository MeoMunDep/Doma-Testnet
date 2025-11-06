@echo off
title Mizu-Testnet Bot by @MeoMunDep
color 0A

cd %~dp0

echo Checking for bot updates...
git pull origin main > nul 2>&1
echo Bot updated!

echo Checking configuration files...

if not exist configs.json (
    > configs.json echo {
    >> configs.json echo   "proxyMode": "static",
    >> configs.json echo   "skipInvalidProxy": false,
    >> configs.json echo   "delayEachAccount": [1, 1],
    >> configs.json echo   "timeToRestartAllAccounts": 86400,
    >> configs.json echo   "howManyAccountsRunInOneTime": 1,
    >> configs.json echo.
    >> configs.json echo   "faucet": { "enable": true },
    >> configs.json echo.
    >> configs.json echo   "bridge": {
    >> configs.json echo     "sepoliaToDoma": {
    >> configs.json echo       "enable": true,
    >> configs.json echo       "valueAmount": [0.0001, 0.0002],
    >> configs.json echo       "txCount": [1, 3]
    >> configs.json echo     },
    >> configs.json echo     "domaToSepolia": {
    >> configs.json echo       "enable": false,
    >> configs.json echo       "valueAmount": [0.0001, 0.0002],
    >> configs.json echo       "txCount": [1, 3]
    >> configs.json echo     }
    >> configs.json echo   },
    >> configs.json echo.
    >> configs.json echo   "buyTokens": {
    >> configs.json echo     "enable": true,
    >> configs.json echo     "amountUSDT": [1000, 2000]
    >> configs.json echo   },
    >> configs.json echo.
    >> configs.json echo   "sellTokens": {
    >> configs.json echo     "enable": true,
    >> configs.json echo     "amountToken": [0.01, 0.02]
    >> configs.json echo   }
    >> configs.json echo }
    echo Created configs.json
)

(for %%F in (privateKeys.txt proxies.txt) do (
    if not exist %%F (
        type nul > %%F
        echo Created %%F
    )
))

echo Configuration files checked.

echo Checking dependencies...
if exist "..\node_modules" (
    echo Using node_modules from parent directory...
    cd ..
    CALL npm install user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger ethers 
    cd %~dp0
) else (
    echo Installing dependencies in current directory...
    CALL npm install user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger ethers 
)
echo Dependencies installation completed!

echo Starting the bot...
node meomundep

pause
exit
