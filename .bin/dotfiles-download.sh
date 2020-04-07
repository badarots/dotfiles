git clone --bare https://github.com/badarot/dotfiles.git $HOME/.cfg
function dotfiles {
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
mkdir -p .dotfiles.bk
dotfiles checkout
if [ $? = 0 ]; then
    echo "Checked out config.";
else
    echo "Backing up pre-existing dot files.";
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
dotfiles checkout
dotfiles config status.showUntrackedFiles no
# echo "alias dotfiles='/usr/bin/git --git-dir=$HOME.dotfiles/ --work-tree=$HOME'" >> $HOME/.profile
