# Install instructions

```
cd $HOME
```
### get source
```
git clone git@github.com:vmaksymiv/vimrc.git
```
### apply configuration
```
ln -s vimrc/.vimrc .vimrc
ln -s  vimrc/.vim .vim
```
### fetch plugins
```
cd vimrc
git submodule update --init
```
### install powerline fonts
```
cd .vim/powerline-fonts/
./install.sh
```
