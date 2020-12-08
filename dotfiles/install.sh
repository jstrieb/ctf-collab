#!/bin/bash

###############################################################################
# NOTE: Must be run in the dotfiles directory
###############################################################################

# Fail if any step fails
set -e;

# Turn parts of the setup script on and off
CONFIGURE_GIT=true
CONFIGURE_BASH=true
CONFIGURE_MOTD=true
CONFIGURE_TMUX=true
CONFIGURE_VIM=true



###############################################################################
# Configure Git
###############################################################################

if $CONFIGURE_GIT; then

cat .gitconfig >> ~/.gitconfig

fi # $CONFIGURE_GIT



###############################################################################
# Configure Bash
###############################################################################

if $CONFIGURE_BASH; then

cat .bashrc >> ~/.bashrc
cat .bash_profile >> ~/.bash_profile

fi # $CONFIGURE_BASH



###############################################################################
# Configure MOTD
###############################################################################

if $CONFIGURE_MOTD; then

cat motd | sudo tee --append /etc/motd > /dev/null

fi # $CONFIGURE_MOTD



###############################################################################
# Configure tmux
###############################################################################

if $CONFIGURE_TMUX; then

cat .tmux.conf >> ~/.tmux.conf

fi # $CONFIGURE_TMUX



###############################################################################
# Configure Vim
###############################################################################

if $CONFIGURE_VIM; then

cat .vimrc >> ~/.vimrc

fi # $CONFIGURE_VIM
