function l --wraps=eza --description 'alias l=eza'
  eza $argv
end

function ll --wraps='eza --long' --description 'alias ll=eza --long'
  eza --long $argv
end

function la --wraps='eza --long --all' --description 'alias ll=eza --long --all'
  eza --long --all $argv
end

function lg --wraps='eza --long --git --git-ignore' --description 'alias lg=eza --long --git --git-ignore'
  eza --long --git --git-ignore $argv
end

function lga --wraps='eza --long --git' --description 'alias lga=eza --long --git'
  eza --long --git $argv
end

function lt --wraps='eza --tree --level=$1 $argv' --description 'alias lt=eza --tree --level=$1 $argv'
  if test (count $argv) -eq 0
    eza --tree --level=2
  else if test (count $argv) -eq 1
    eza --tree --level=$argv
  else
    eza --tree --level=$argv[1] $argv[2..-1]
  end
end

function cdl --wraps='cd $argv && eza --long' --description 'alias cdls=cd $argv && eza --long'
  cd $argv && eza --long
end

function cdla --wraps='cd $argv && eza --long --all' --description 'alias cdla=cd $argv && eza --long --all'
  cd $argv && eza --long --all
end

function cdls --wraps='cd $argv && eza --tree --level=2' --description 'alias cdls=cd $argv && eza --tree --level=2'
  cd $argv && eza --tree --level=2
end

function mkcd --wraps='mkdir $argv && cd $argv' --description 'alias mkcd=mkdir $argv && cd $argv'
  mkdir $argv && cd $argv
end

function v
  if test -d $argv[1]
    eza --long $argv[1]
  else if test -f $argv[1]
    bat $argv[1]
  else
    echo "Error: Path '$argv[1]' is neither a directory nor a file."
  end
end

function nv --wraps=nvim --description 'alias nv=nvim'
  nvim $argv
end

function nvg --description 'launch neovide here'
  nohup neovide . > /dev/null 2>&1 &
  disown
end
