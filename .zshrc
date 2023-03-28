### Aliases

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias wpscan='wpscan --api-token "<Token>"'
alias cdd="source /opt/zsrc/cdd.sh"
alias reload="source ~/.zshrc"
alias thm="source /opt/zsrc/thm.sh"
alias tmp="source /opt/zsrc/tmp"
alias finish="source /opt/zsrc/finish"
alias vt="~/tools/vt-cli/vt/main"
alias cyberchef="source /opt/zsrc/cyberchef"
alias lsort="/opt/zsrc/lsort"
alias mkflag="source /opt/zsrc/mkflag"
alias urls="/opt/zsrc/urls"
alias ciphey="docker run -it --rm remnux/ciphey"
alias ff="open ."
alias hosts="sudo nano /etc/hosts"
alias rustscan="docker run -it --rm --name rustscan rustscan/rustscan:1.10.0"
alias tmpdocker='docker run -v "$PWD:/mnt" --rm -it ubuntu'








### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
