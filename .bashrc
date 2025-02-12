
export PIP_CACHE_DIR="/vol/bitbucket/$USER/"
export PATH="$PATH:/vol/bitbucket/$USER/:/usr/bin/"
eval "$(ssh-agent -s)"
export PYENV_ROOT="/vol/bitbucket/$USER/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
