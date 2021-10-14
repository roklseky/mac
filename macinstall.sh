#!/bin/sh
#https://formulae.brew.sh/cask/
#chmod a+x macinstall.sh

#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap homebrew/cask
brew install homebrew/cask/brew-cask

#Dev
brew install docker
brew install --cask visual-studio-code
brew install --cask pycharm-ce
brew install --cask raspberry-pi-imager
#git clone https://github.com/marcelstoer/nodemcu-pyflasher.git

#DMG flasher
wget https://github.com/marcelstoer/nodemcu-pyflasher/releases/download/v5.0.0/NodeMCU-PyFlasher.dmg
DMG=$(find *.dmg)
sudo hdiutil attach $DMG
APP=$(find /Volumes -name '*.app')
sudo cp -R $APP /Applications
DET="$(cut -d'/' -f3 <<<"$APP")"
sudo hdiutil detach /Volumes/$DET

#TAR ESP Flasher
wget https://github.com/Jason2866/ESP_Flasher/releases/download/v.1.3/macOS.zip
unzip -a macOS.zip
tar -xvf dist.tar

#PKG python
wget https://www.python.org/ftp/python/3.9.6/python-3.9.6-macosx10.9.pkg
PKG=$(find *.pkg)
sudo installer -package $PKG -target /

#ZIP Arduino
wget https://downloads.arduino.cc/arduino-1.8.15-macosx.zip
unzip -a arduino-1.8.15-macosx.zip
sudo mv Arduino.app /Applications/Arduino.app

#Tools
brew install --cask trezor-suite
brew install --cask itsycal
brew install --cask enpass
brew install --cask tuxera-ntfs
brew install --cask firefox
brew install --cask balenaetcher

wget https://info.eidentita.cz/Download/eObcanka.dmg
DMG=$(find *.dmg)
sudo hdiutil attach $DMG
PKG=$(find /Volumes -name '*.pkg')
sudo installer -package $PKG -target /
DET="$(cut -d'/' -f3 <<<"$PKG")"
sudo hdiutil detach /Volumes/$DET


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


