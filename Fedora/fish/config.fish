set fish_greeting ""
set PATH ~/.local/bin/ $PATH

bind \ct kill-word

function greet
  fortune | cowsay
end

greet

function fish_prompt
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal
  echo -n ' % '
end

function dnfi
  sudo dnf install $argv
end

function dnfs
  sudo dnf search $argv
end

function vimu
  vim +BundleUpdate
end

function ydl
    youtube-dl $argv
end

function hfind
    echo $argv
    find ~/ -name $argv
end

function rfind
    sudo find / -name $argv
end

function gclone
    git clone $argv
end

function glog
    git log --oneline -p $argv
end

function girebase
    git rebase -i $argv
end

function grebase
    git rebase $argv
end

function ggrep
    git grep $argv
end

function gremote
    git remote -v
end
