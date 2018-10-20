#codespace grep
alias loc='grep -R --exclude=*svn* --exclude=*node_modules* --exclude-dir=builds --exclude-dir=bin --exclude-dir=doc --exclude-dir=nutos --exclude=*2.tmp --exclude=*.alst --exclude=*.lst --exclude=*.o --exclude=*.a --exclude=*.tmp --exclude=*.swp --exclude=*.swo --exclude-dir=Release --exclude-dir=app/views/bill/timesheets --exclude-dir=log --exclude-dir=public/datasheets --exclude=cscope.out --exclude=tags'
#alias loc='ack-grep'


#svn aliases
alias sadd='svn add'
alias sdiff='svn diff'
alias smeld='svn diff --diff-cmd=/usr/bin/meld'
alias sstat='svn status -u'
alias scom='svn commit -m'
alias sco='svn co'
alias srev='svn revert'
alias sup='svn update' 
alias sunk="svn status | grep '?' | cut -d' ' -f8"
alias snew='svn add `sunk`'
alias sst='svn status'
alias slog='svn log --stop-on-copy'
alias spath="svn info | grep ^URL | sed -e 's/URL: //'"
alias sbase='svn info | grep ^URL | sed -e "s/URL: //" | sed -e "s/\/\(trunk\|branches\|tags\).*//"'
alias stag='svn info | grep ^URL | sed -e "s/URL: //" | sed -e "s/\/\(trunk\|branches\|tags\).*/\/tags/"'
alias sbra='svn info | grep ^URL | sed -e "s/URL: //" | sed -e "s/\/\(trunk\|branches\|tags\).*/\/branches/"'
alias stru='svn info | grep ^URL | sed -e "s/URL: //" | sed -e "s/\/\(trunk\|branches\|tags\).*/\/trunk/"'

# Remove junk
alias rmswo="find . -type f -iname '*.swo' -exec rm {} \;"
alias rmswp="find . -type f -iname '*.swp' -exec rm {} \;"
alias rmswm="find . -type f -iname '*.swm' -exec rm {} \;"
alias rmswn="find . -type f -iname '*.swn' -exec rm {} \;"

#rails shortcuts
alias ss='script/server'

#encryption helpers
alias enc='gpg --force-mdc -c'
alias dec='gpg'

#gvim shortcuts for one session use
#alias g='gvim --remote-silent'
#alias gs='gvimremotebyservername'
#alias gls='gvim --serverlist'
#alias g1='gvimremotebyservername 1'
#alias g2='gvimremotebyservername 2'
#alias g3='gvimremotebyservername 3'
#alias g4='gvimremotebyservername 4'
#alias g12='gvimremotebyservername 12'
#alias g22='gvimremotebyservername 22'
#alias g32='gvimremotebyservername 32'
#alias g42='gvimremotebyservername 42'
#alias g13='gvimremotebyservername 13'
#alias g23='gvimremotebyservername 23'
#alias g33='gvimremotebyservername 33'
#alias g43='gvimremotebyservername 43'
#alias g14='gvimremotebyservername 14'
#alias g24='gvimremotebyservername 24'
#alias g34='gvimremotebyservername 34'
#alias g44='gvimremotebyservername 44'

#screen shortcuts
alias scr='screen -r'

#process grep
alias psgrep='ps aux | grep -v "grep" | grep'

#ssh -X alias
alias sx='ssh -X'

#clear shortcut
alias c='clear'

alias o='xdg-open'

#Windows functions and aliases
#wmodplusx() {
#    echo Add executable to file
#    wrun "icacls $1 /inheritance:d"
#    wrun "icacls $1 /remove:d Everyone"
#    wrun "icacls $1 /grant:r Everyone:(RX,W,DC)"
#    wrun "icacls $1 /grant:r T440S\daniellmorris:(F)"
#}
#wmodminusx() {
#    echo Remove executable to file
#    echo Add executable to file
#    wrun "icacls $1 /inheritance:d"
#    wrun "icacls $1 /remove:d Everyone"
#    wrun "icacls $1 /grant:r Everyone:(RX,W,DC)"
#    wrun "icacls $1 /grant:r T440S\daniellmorris:(F)"
#    wrun "icacls $1 /deny Everyone:(S,X)"
#}
#wmodstatus() {
#    wrun "icacls $1"
#}
#alias wmod+x=wmodplusx
#alias wmod-x=wmodminusx
#alias wmodstat=wmodstatus

alias vi="nvim"
alias gvim="gnome-terminal --hide-menubar -e nvim"
alias g="gnome-terminal --hide-menubar -e nvim"
