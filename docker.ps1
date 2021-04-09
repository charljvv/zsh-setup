choco feature enable -n allowGlobalConfirmation

choco install wsl2
choco install wsl-ubuntu-2004
choco install docker-desktop

choco feature disable -n allowGlobalConfirmation