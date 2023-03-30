### Aliases
alias urls="/opt/zsrc/urls"
alias reload="source ~/.zshrc"
alias thm="source /opt/zsrc/thm.sh"
alias finish="source /opt/zsrc/finish"
alias vt="~/tools/vt-cli/vt/main"
alias cyberchef="source /opt/zsrc/cyberchef"
alias mkflag="source /opt/zsrc/mkflag"
alias ciphey="docker run -it --rm remnux/ciphey"
alias ff="open ."
alias hosts="sudo nano /etc/hosts"
alias rustscan="docker run -it --rm --name rustscan rustscan/rustscan:1.10.0"
alias tmpdocker='docker run -v "$PWD:/mnt" --rm -it ubuntu'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias lsort="awk '{ print length, \$0 }' | sort -n -s "
alias free='free -m'  # show sizes in MB
alias ports='sudo lsof -iTCP -sTCP:LISTEN -n -P'
alias findf='fzf --height 50% --border --color 16'
alias apti='apt info'
alias apts='apt search'
alias df='df -hT'
alias vpn="ls /home/kali/vpn/ | grep -E '\.ovpn' | sed 's/.ovpn//g' | fzf --height 25% --border double --ansi --tac --border-label='select vpn to connect' --color='bg:237,bg+:236,info:143,border:240,spinner:108' | xargs -I {} sudo openvpn /home/kali/vpn/{}.ovpn; sudo killall openvpn #"


# confirm before overwriting something
#https://gitlab.com/dwt1/dotfiles/-/blob/master/.bashrc
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# ps
#https://gitlab.com/dwt1/dotfiles/-/blob/master/.bashrc
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'




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

#create and change directory 
#usage cdd <FolderName>
cdd ()
{
    if [ "$1" ]
        then
            echo $1
            mkdir -p $1
            cd $1 
    else
        echo "Usage: $0 <FolderName>[/<anotherFolder>/<another>]"
    fi
}

#create folder in /tmp and cd into it
#usage tmp <FolderName>
tmp ()
{
    if [ "$1" ]
      then
        mkdir -p /tmp/$1
        cd /tmp/$1
    else
        echo "Usage: $0 <FolderName>[/<anotherFolder>/<another>]"
    fi

}
