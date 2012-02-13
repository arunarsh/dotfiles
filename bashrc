# Give locally installed packages precedence over system defaults.
export PATH="/usr/local/bin:$PATH"

# Add local Python install to PYTHONPATH
export PYTHONPATH="/usr/local/lib/python:$PYTHONPATH"

# Fix to install Perl DBD::mysql module
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/usr/local/mysql/lib/"

# Load RVM into a shell session.
[[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"

alias pear="php /usr/lib/php/pear/pearcmd.php" 
alias pecl="php /usr/lib/php/pear/peclcmd.php" 

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
