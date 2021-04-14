echo "Powerline Fonts"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
Invoke-Item (start powershell ((Split-Path $MyInvocation.InvocationName) + "\install.ps1"))
cd ..
rm -rf fonts