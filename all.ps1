Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

choco install git

choco install microsoft-teams
choco install slack
choco install zoom
choco install whatsapp

#choco install telegram
#choco install signal
#choco install skype
#choco install skypeforbusiness

choco install adobereader

choco install googlechrome
choco install firefox
choco install microsoft-edge

choco install icue

choco install vscode 

choco install jetbrainstoolbox
choco install dbeaver

choco install javaruntime
##choco install jdk8 -params 'installdir=c:\\JDKs\\jdk8'
choco install openjdk

choco install python3 --params "/InstallDir:C:\Python\Python3"
choco install nvm

choco install cmder
#cp .\cmder-setup\user-ConEmu.xml C:/Tools/cmder/config/user-ConEmu.xml

choco install vlc
choco install spotify
choco install k-litecodecpackfull

#choco install wsl2
#choco install wsl-ubuntu-2004
#choco install docker-desktop

choco feature disable -n allowGlobalConfirmation

echo "#############################################"
echo "After starting a new shell, run node.ps1 for a nodeJS installation, powerline.ps1 for Powerline fonts."
echo "#############################################"
echo "ZSHELL SETUP:"
echo "1. Login WSL"
echo "2. clone: https://github.com/charljvv/zsh-setup.git"
echo "3. cd zsh-setup"
echo "4. chmod +x ./zsh-setup.sh"
echo "5. ./zsh-setup.sh"