#completion
autoload -U compinit
compinit

#prompt
autoload -U promptinit
promptinit; prompt bigfade

#colors
autoload -U colors
colors


#complation cache
zstyle ':completion::complete:*' use-cache 1

#correction
# setopt correctall

# aliases

alias mkdir='mkdir -p'
alias ls='ls --color'

# highlight errors
alias -g  HE='2>>( sed -ue "s/.*/$fg_bold[red]&$reset_color/" 1>&2 )' 

# syntax highlight in less
export LESS_TERMCAP_mb=$'\033[01;31m'
export LESS_TERMCAP_md=$'\033[01;31m'
export LESS_TERMCAP_me=$'\033[0m'
export LESS_TERMCAP_se=$'\033[0m'
export LESS_TERMCAP_so=$'\033[01;44;33m'
export LESS_TERMCAP_ue=$'\033[0m'
export LESS_TERMCAP_us=$'\033[01;32m'

eval `dircolors`
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"
bindkey -v

alias -g  CA='|& cat -A'
alias -g  CL='| wc -l'
alias -g   C='***/*.([chly]|[ch]pp|[ch]xx|C)'
alias -g   D='| xxd -g 1'
alias -g   G='| grep'
alias -g  GI='| grep -i'
alias -g   H='| head'
alias -g IKU='| iconv -cf koi8r  -t utf8'
alias -g IKW='| iconv -cf koi8r  -t cp1251'
alias -g IUK='| iconv -cf utf8   -t koi8r'
alias -g IUW='| iconv -cf utf8   -t cp1251'
alias -g IWK='| iconv -cf cp1251 -t koi8r'
alias -g IWU='| iconv -cf cp1251 -t utf8'
alias -g   L='| less'
alias -g  LE='|& less'
alias -g  PD='| patch -p1 --dry-run'
alias -g   P='| patch -p1'
alias -g   S='| sort'
alias -g  SU='| sort -u'
alias -g   T='| tail'
alias -g   V='| vim -'
alias -g  VM='| vim -c "set ft=mail" -'
alias -g  LM=/var/log/messages
alias -g  LS=/var/log/syslog
alias -g X0G='| xargs -0 egrep'
alias -g  X0='| xargs -0'
alias -g  XG='| xargs egrep'
alias -g   X='| xargs'
alias -g  DN='/dev/null'
alias -g  NO='&> /dev/null' # No Output
alias -g  NE='2> /dev/null' # No Errors
alias -g   E='2>&1'
