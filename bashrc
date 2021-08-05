#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:$HOME/bin"

alias ls='ls --color=auto'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias chrome='google-chrome-beta'
alias via='via --no-sandbox'

#PS1='[\u@\h \W]\$ '
#PS1='[\u@\h \W]\$ '
PS1='\e[0;35m[\u@\h\e[m\e[0;31m \W\e[m\e[0;35m]\$\e[m '

