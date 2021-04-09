Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

choco install microsoft-teams
choco install slack

choco install git
choco install vscode 

choco install jetbrainstoolbox
choco install dbeaver

choco install javaruntime
choco install jdk8 -params 'installdir=c:\\JDKs\jdk8'
choco install jdk11 -params 'installdir=c:\\JDKs\jdk11'

choco install python3 --params "/InstallDir:C:\Python\Python3"
choco install nvm

choco install cmder

choco install vlc
choco install spotify

choco install wsl2
choco install wsl-ubuntu-2004
choco install docker-desktop

choco feature disable -n allowGlobalConfirmation

echo "#############################################"
echo "Restart your shell and run dev2-node.ps1 if you want to install a node version with NVM"
echo "#############################################"
echo "ZSHELL SETUP:"
echo "1. Login WSL"
echo "2. clone: https://github.com/charljvv/zsh-setup.git"
echo "3. cd zsh-setup"
echo "4. chmod +x ./zsh-setup.sh"
echo "5. ./zsh-setup.sh"