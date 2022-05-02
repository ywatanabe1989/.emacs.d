## Install the latest Emacs on Ubuntu
```
sudo sh ./install/emacs_29.0.50_on_ubuntu.sh
```

## Install this repo's configurations
``` bash
git clone git@github.com:ywatanabe1989/.emacs.d.git ~/.emacs.d_ywata


TODAY=`date +%Y-%m-%d-%H:%m`

mv -v $HOME/.emacs.d $HOME/.emacs.d_back_$TODAY
ln -snfv $HOME/.emacs.d_ywata $HOME/.emacs.d
```
