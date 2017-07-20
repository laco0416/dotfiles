#! /bin/sh

cp -R .gitconfig ~/
cp -R ./fish ~/.config

# for Sierra
touch ~/.ssh/config
SSH_CONFIG=`cat ./ssh/config`
echo "$SSH_CONFIG" > ~/.ssh/config

echo "=== Generate SSH key"

ssh-keygen
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub | pbcopy
echo "Register your SSH key for GitHub"
open "https://github.com/settings/keys"
read -p "Press any key after finished."

# Homebrew
echo "=== Install Homebrew"

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

./brew.sh

brew doctor

# nodebrew
echo "=== Install Nodebrew"
nodebrew install-binary 6
nodebrew use 6

echo "=== Setup Mac environment"
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder
