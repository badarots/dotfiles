export EDITOR=micro
export VISUAL="$EDITOR"

# export PATH="$PATH:$HOME/.local/paraview/bin"
# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/.local/paraview/lib"

alias l=ls
alias lh='ls -lh'
alias la='ls -alh'
alias c=cd
alias e=$EDITOR

alias dotfiles='/usr/bin/git --git-dir=/home/badaro/.dotfiles/ --work-tree=/home/badaro'

alias sampa_on='sshfs sampassh.if.usp.br:/sampa/badaro/gem_opt $HOME/Projetos/sampafs'
alias sampa_off='fusermount -u $HOME/Projetos/sampafs'
