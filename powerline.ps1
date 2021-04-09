echo "Powerline Fonts"
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
Invoke-Item (start powershell ((Split-Path $MyInvocation.InvocationName) + "\install.ps1"))
# clean-up a bit
cd ..
rm -rf fonts