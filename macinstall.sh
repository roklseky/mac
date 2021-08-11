#!/bin/sh
#https://formulae.brew.sh/cask/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
brew install caskroom/cask/brew-cask

brew install wget
brew install telnet

brew install docker
brew install --cask visual-studio-code
brew install --cask pycharm-ce
brew install --cask kodi
brew install termius
brew install --cask deepl
brew install --cask trezor-suite
brew install --cask tunnelblick
brew install --cask tuxera-ntfs
brew install --cask vlc
brew install --cask raspberry-pi-imager
brew install --cask itsycal
brew install --cask teamviewer
brew install --cask firefox
brew install --cask airflow
brew install --cask enpass
brew install --cask teamviewer
git clone https://github.com/marcelstoer/nodemcu-pyflasher.git

wget https://www.python.org/ftp/python/3.9.6/python-3.9.6-macosx10.9.pkg
wget https://downloads.arduino.cc/arduino-1.8.15-macosx.zip
wget https://dl2.cdn.filezilla-project.org/client/FileZilla_3.55.1_macosx-x86.app.tar.bz2?h=Yl5oCqnblpnu2AlICfgTOA&x=1628694714



