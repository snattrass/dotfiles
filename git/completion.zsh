# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).
completion=/opt/homebrew/share/zsh/site-functions/_git

if [[ -f $completion ]];
then
  export FPATH="$completion:$FPATH"
fi
