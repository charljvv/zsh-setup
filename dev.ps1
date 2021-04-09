choco feature enable -n allowGlobalConfirmation

choco install git
choco install vscode 

choco install jetbrainstoolbox
choco install dbeaver

choco install javaruntime
choco install jdk8 -params 'installdir=c:\\JDKs\jdk8'
choco install jdk11 -params 'installdir=c:\\JDKs\jdk11'

#choco install pyenv-win
choco install python3 --params "/InstallDir:C:\Python\Python3"
choco install nvm

choco install cmder

choco feature disable -n allowGlobalConfirmation

echo "ZSHELL SETUP:"
echo "1. Login WSL"
echo "2. clone: https://github.com/charljvv/zsh-setup.git"
echo "3. cd zsh-setup"
echo "4. chmod +x ./zsh-setup.sh"
echo "5. ./zsh-setup.sh"