dotfiles
========

Great bash for Unix when using ZSH

### Using it

You'll have to clone dotfiles

```
git clone https://github.com/rodrigomonteiro/.dotfiles.git
```

and clone prezto theme

```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

create a few sym links: 

```
ln -s .zprezto/runcoms/zlogin .zlogin
ln -s .zprezto/runcoms/zlogout .zlogout
ln -s .zprezto/runcoms/zprofile .zprofile
ln -s .zprezto/runcoms/zshenv .zshenv
ln -s .dotfiles/gitconfig .gitconfig (This ln is optional. If you do it, remember to change name, email and github name)
```

change your shell to zsh

```
chsh -s /bin/zsh
```

finally, override default zsh conf

```
ln -sf .dotfiles/zsh/zprezto/runcoms/zpreztorc .zpreztorc
ln -sf .dotfiles/zsh/zprezto/runcoms/zshrc .zshrc
```

create some cool functions

```
cd ~/.zprezto/modules/prompt/functions
ln -s .dotfiles/zsh/zprezto/modules/prompt/functions/prompt_saito_setup

```