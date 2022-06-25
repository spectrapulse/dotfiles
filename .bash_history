ls
ls -la
rm {,.}* -r
ls
la
ls -la
exit
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
config status
config ignore
config 
touch .gitignore
vim .gitignore 
vim .bashrc 
vim .bash_aliases
vim .bashrc 
exit
vim .bashrc 
exit
vim .bashrc 
vim .bash-powerline.sh
powerline
starship
sudo apt install starship
curl -sS https://starship.rs/install.sh | sh
exit
starship
starship init bash
mkdir -p ~/.config && touch ~/.config/starship.toml
vim .config/starship.toml 
exit
starship init bash
ls
la
ls -la
rm .bash-powerline.sh 
vim .bashrc 
vim .bash_profile
exit
vim .bash_profile
exit
touch .profile
vim .profile 
rm .bash_profile
exit
vim .config/starship.toml 
exit
ls -la
rm .viminfo 
ls
la
rm .cache .landscape .motd_shown .sudo_as_admin_successful 
rm .cache .landscape .motd_shown .sudo_as_admin_successful -rf
exit
ls
vim .config/starship.toml 
exit
vim .bashrc 
exit
