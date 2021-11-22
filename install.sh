#!/usr/bin/env zsh

install_homebrew() {
    if ! command -v brew &> /dev/null; then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew update
        brew upgrade
    fi
}

install_diffmerge() {
    if ! command -v diffmerge &> /dev/null; then
        echo "\n –– installing diffmerge –– \n"
        brew cask install diffmerge
    fi
}

install_deps() {
    install_homebrew
    install_diffmerge
}

if [ $SPIN ]; then
  install_deps
fi