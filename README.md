# homebrew-therion

Therion is cave surveying software - for details see https://therion.speleo.sk

This repository is hosting homebrew formulae for easier installation and update of Therion on your Mac. Please launch Terminal app and follow the instructions.

## Installation

### 1. Install Command Line Tools

`xcode-select --install`

### 2. Install Homebrew - http://brew.sh/

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

Test it:

`brew update`

`brew doctor`

If you want to disable brew analytics type:

`brew analytics off`

### 3. Install XQuartz

If your macOS doesn't contain X11 server (10.12 Sierra+) install it by following command:

`brew cask install xquartz`

### 4. Install MacTeX

`brew cask install mactex`

### 5. Install Therion

`brew install https://raw.githubusercontent.com/ladislavb/homebrew-therion/master/therion.rb`

Homebrew will install the latest **tested** revision from GitHub - currently **8b062cb**. I will try to follow therion development and update formulae regulary. 

If you want to install the latest - bleeding edge version use:

`brew install --HEAD https://raw.githubusercontent.com/ladislavb/homebrew-therion/master/therion.rb`

### 6. Linking Loch to /Applications

To create symbolic link for loch.app to Applications folder run:

`brew linkapps`

## Running apps

After sucessfull installation you should be able to:

- start XTherion by typing `xtherion` command to Terminal window
- run Therion compiler by typing `therion` command to Terminal window
- launch Loch viewer from Launchpad

## Upgrade

Launch Terminal app and type `brew update`

## Uninstall

Launch Terminal app and type `brew uninstall therion`
