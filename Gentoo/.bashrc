# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
[[ $- != *i* ]] && return 
# Shell is non-interactive.  Be done now!


# Put your fun stuff here.
echo ""
tsfetch
echo ""
figlet Welcome!
echo ""

PS1='\[\033[1;31m\][\d \[\033[1;33m\]\@] \[\033[1;32m\]\h:\[\033[1;34m\]\w \[\033[1;35m\]\$\[\033[00m\] '

export PATH=$PATH:$HOME/.local/bin/
export EDITOR=vim
export VISUAL=vim
export TERM=alacritty
export HISTCONTROL=ignoreboth

alias abt="sudo rc-service bluealsa start; 
bluetoothctl power on;
bluetoothctl disconnect E0:9D:FA:17:AA:3A; 
bluetoothctl connect E0:9D:FA:17:AA:3A; 
cp ~/ALSA/.asoundrc__ ~/.asoundrc"
alias abt2="sudo rc-service bluealsa start; 
bluetoothctl power on; 
bluetoothctl disconnect 00:1F:47:74:D5:32; 
bluetoothctl connect 00:1F:47:74:D5:32; 
amixer -D bluealsa -- sset 'LG AUDIO ND5520 - A2DP' playback 64; 
cp ~/ALSA/.asoundrc___ ~/.asoundrc; 
cp ~/SXHKD/sxhkdrc__ ~/.config/sxhkd/sxhkdrc; 
pkill -USR1 -x sxhkd"
alias ahw="cp ~/ALSA/.asoundrc_ ~/.asoundrc; 
cp ~/SXHKD/sxhkdrc_ ~/.config/sxhkd/sxhkdrc; 
pkill -USR1 -x sxhkd"
alias gts="git status"
alias g="git"
alias wm2b="cp ~/Xinit/.xinitrc_ ~/.xinitrc"
alias wmd="cp ~/Xinit/.xinitrc__ ~/.xinitrc"
alias mrg="sudo emerge-webrsync; sudo emerge -v --update --newuse --deep --changed-deps @world @preserved-rebuild"
alias mmrg="sudo emerge-webrsync; sudo emerge -av --update --newuse --deep --changed-deps @world @preserved-rebuild"
alias 1080="mpv --ytdl-format='bestvideo[height<=?1080][vcodec!=vp9]+bestaudio/best'"
alias 720="mpv --ytdl-format='bestvideo[height<=?720][vcodec!=vp9]+bestaudio/best'"
alias 480="mpv --ytdl-format='bestvideo[height<=?480][vcodec!=vp9]+bestaudio/best'"
alias 360="mpv --ytdl-format='bestvideo[height<=?360][vcodec!=vp9]+bestaudio/best'"
alias 240="mpv --ytdl-format='bestvideo[height<=?240][vcodec!=vp9]+bestaudio/best'"
alias 144="mpv --ytdl-format='bestvideo[height<=?144][vcodec!=vp9]+bestaudio/best'"
