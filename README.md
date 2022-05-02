## Install Emacs on Ubuntu
```
sudo sh ./docs/install_the_latest_emacs_on_ubuntu.sh
export PATH=/opt/emacs-latest/bin:$PATH >> ~/.bashrc
```

## Install this repo's configurations
``` bash
git clone git@github.com:ywatanabe1989/.emacs.d.git ~/.emacs.d_ywata

TODAY=`date +%Y-%m-%d-%H:%m`
mv -v $HOME/.emacs.d $HOME/.emacs.d_back_$TODAY
ln -snfv $HOME/.emacs.d_ywata $HOME/.emacs.d
```
