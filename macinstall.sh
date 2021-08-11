#!/bin/sh
#https://formulae.brew.sh/cask/
#chmod a+x macinstall.sh

#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap caskroom/cask
brew install caskroom/cask/brew-cask

#Dev
brew install docker
brew install --cask visual-studio-code
brew install --cask pycharm-ce
brew install --cask raspberry-pi-imager
#git clone https://github.com/marcelstoer/nodemcu-pyflasher.git
wget https://github.com/marcelstoer/nodemcu-pyflasher/releases/download/v5.0.0/NodeMCU-PyFlasher.dmg

wget https://www.python.org/ftp/python/3.9.6/python-3.9.6-macosx10.9.pkg
wget https://downloads.arduino.cc/arduino-1.8.15-macosx.zip

#Tools
brew install --cask trezor-suite
brew install --cask itsycal
brew install --cask enpass
brew install --cask tuxera-ntfs
brew install --cask firefox
brew install --cask balenaetcher
wget https://info.eidentita.cz/Download/eObcanka.dmg

#Transfer (SFTP,SSH...)
brew install wget
brew install telnet
brew install --cask tunnelblick
brew install duck
brew install --cask cyberduck
brew install --cask teamviewer
#brew install --cask transfer
brew install termius

#Media
brew install --cask kodi
brew install --cask vlc
brew install --cask airflow

#Translate
brew install --cask deepl

wget https://dl2.cdn.filezilla-project.org/client/FileZilla_3.55.1_macosx-x86.app.tar.bz2?h=Yl5oCqnblpnu2AlICfgTOA&x=1628694714

#install DMG
sudo hdiutil attach <image>.dmg
#pkg
sudo installer -package /Volumes/<image>/<image>.pkg -target /
#app
sudo cp -R /Volumes/Etcher\ 1.2.1/Etcher.app /Applications
sudo hdiutil detach /Volumes/<image>


