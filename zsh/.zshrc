# Set vim as the default EDITOR
export EDITOR=vim

# Escape the ^ character for commands like `git reset HEAD^`.
setopt NO_NOMATCH

# PATH environment variables.
export ZSH=$HOME/.oh-my-zsh
export WORKON_HOME=$HOME/.virtualenvwrapper/envs
export RVM_PATH=$HOME/.rvm/bin
export COMPOSER_PATH=$HOME/.composer/vendor/bin:./vendor/bin
export PATH=$PATH:$COMPOSER_PATH:$RVM_PATH

# Oh-my-zsh theme enabled
ZSH_THEME="robbyrussell"

# Oh-my-zsh plugins enabled
plugins=(composer extract git laravel5 npm rvm sublime sudo virtualenvwrapper)

# Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load aliases, functions and third-party
for file in ~/.{aliases,local,locale,functions,third-party}.zsh; do
    [ -r "$file" ] && source "$file"
done
unset file
