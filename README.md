# Automated Dev Environment Setup

Dev environment setup, the bane of any consultant's existence. 
Your usual go-to for dev setup is easy, you clone your personal configuration repo, run a good old `sudo ./install-all-the-things.sh` and awaaaay we go! 

That's all well and good, but this isn't Mr.Robot and you're assigned a locked down Windows machine by your client. 

They have policies in place to not allow your custom-built 1337 Linux on their precious intra-net. 

![Mr.Robot](https://media.giphy.com/media/l0K4ovRrRJSs1A4XS/giphy.gif)


But what about my haxor shell script that I've perfected over the years? No apt-get for you this time my friend!

**Solution:** [Chocolatey](https://community.chocolatey.org/), a package manager for Windows.

To quote from their site: `Chocolatey has the largest online registry of Windows packages. Chocolatey packages encapsulate everything required to manage a particular piece of software into one deployment artifact by wrapping installers, executables, zips, and/or scripts into a compiled package file.`

So what does that mean for me the 1337 linux haxor?

You can automate most of your Windows (probably 10) application installs!

Combine Choco and Powershell (as admin) and dev environment setup is a breeze.

## Installation

**NOTE:** You do require Admin rights on the machine for this to work though, soooo goodluck getting that request approved 😂

Once you have choco installed and running (which the devs have made easy with a nice one-liner powershell command). 
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

## Usage
You can now start installing applications.
The syntax 

`choco install THE_APP_NAME_YOU_WANT_TO_INSTALL`

eg. `choco install git`

The list of available applications can be found at [Packages](https://community.chocolatey.org/packages)

**NOTE:** choco installs require scripts to be run in an escalated powershell (powershell as admin) terminal to function correctly. 

In most cases choco will warn you if it detects you don't have the relevant permissions to install unsupervised applications.

Great! But do I have to now run this command manually for every app I want to install? Well, kind-of! 
You can setup a powershell script like:

```
choco feature enable -n allowGlobalConfirmation

choco install git

choco install microsoft-teams
choco install slack
choco install zoom
choco install whatsapp

choco feature disable -n allowGlobalConfirmation
```

Firstly, this will enable the "allowGlobalConfirmation" flag so Choco doesn't prompt you to confirm every installation.

Secondly, will run each install candidate as per the script, in order.

Lastly, disable the allowGlobalConfirmation, so you don't accidently confirm new installs when adding stuff manually.

Neat! Now start adding apps to your powershell script for future installs. I've split mine into seperate scripts per category.

[`media.ps1`](https://github.com/charljvv/zsh-setup/blob/main/media.ps1) for example contains:

```
choco install vlc
choco install spotify
choco install adobereader
choco install k-litecodecpackfull
``` 
and 

[`comms.ps1`](https://github.com/charljvv/zsh-setup/blob/main/comms.ps1) contains:

```
choco install microsoft-teams
choco install slack
choco install zoom
choco install whatsapp
```

[`dev.ps1`](https://github.com/charljvv/zsh-setup/blob/main/dev.ps1) is specifically for development tools/frameworks:

```
choco install git
choco install vscode 

choco install jetbrainstoolbox
choco install dbeaver

choco install javaruntime
choco install openjdk
#choco install jdk11 -params 'installdir=c:\\JDKs\jdk11'

choco install python3 --params "/InstallDir:C:\Python\Python3"
choco install nvm

choco install cmder
```
Notice the `InstallDir` for Python, this can be modified as per the documentation for that specific package.


Even hardware specific driver installations like:

[`hardware.ps1](https://github.com/charljvv/zsh-setup/blob/main/hardware.ps1)

```
choco install icue
choco install nvidia-display-driver
```

You can split this as you see fit or just throw all of them into one script for maximum automation POWER 

![Unlimited power](https://media.giphy.com/media/3o84sq21TxDH6PyYms/giphy.gif)

## Updating
Choco has the ability to update your installed packages. 

Updating a specific app, `choco update APP_NAME` or `choco update all` will update all applications installed via Choco.
The apt equivalent of this would be `apt-get update && apt-get upgrade` 


## Sources and further reading:

Check out my git for a list of all the scripts and the chunky [`all.ps1`](https://github.com/charljvv/zsh-setup/blob/main/all.ps1)

[Github page](https://github.com/charljvv/zsh-setup)


## Further experimentation 

The purpose of this project was initially to configure my `oh-my-zsh` configuration. If you're interested in automating Cmder, Zsh, oh-my-zsh on WSL, have a look at The `Oh-my-zshell Setup` on git.


# Instructions:
Run the `all.ps1` script in an escalated powershell (powershell as admin).
This will install all the necessary software as specified.
If you want to run individual installs, see the specific ps scripts.

ZShell setup is a bit more involved, so see the seperate section on that.

## Powerline Fonts
1. Run `./powerline.ps1`

## Oh-my-zshell Setup (Requires WSL to be installed and functional)
0. (Optionally run `./wsl.ps1`)
1. Login WSL
2. clone: https://github.com/charljvv/zsh-setup.git
3. cd zsh-setup
4. chmod +x ./zsh-setup.sh
5. ./zsh-setup.sh



