# profile
Profiles for environment setup

## Terminal
* Use zsh, iterm2
* Vim color schemes: https://github.com/junegunn/seoul256.vim
* Themes: https://gist.github.com/kevin-smets/8568070
* Fuzzy finder: https://github.com/junegunn/fzf
* Use iterm2 password manager: https://iterm2.com/documentation-highlights.html#:~:text=iTerm2%20can%20save%20your%20passwords,manager%20and%20enter%20your%20passwords.


## Programs
* Homebrew: `> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
* Other stuff:
```
> echo 'tap "adoptopenjdk/openjdk"
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/core"
brew "docker"
brew "jq"
brew "opensc"
brew "pyenv"
brew "nvm"
cask "adoptopenjdk11"
cask "docker"
cask "google-chrome"
cask "intellij-idea"
cask "iterm2"
cask "slack"
cask "spotify"
cask "viscosity"' > Brewfile && brew bundle
```

## Pyenv

### Enable
```
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
```

### Switch
```
> pyenv install 3.8.2
Installing Python-3.8.2...
> pyenv install 3.6.8
Installing Python-3.6.8...
> pyenv global 3.8.2
```