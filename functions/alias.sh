function clear --wraps 'clear -x' --description 'alias clear=clear -x'
  command clear -x $argv
end

function cp --wraps 'cp -v' --description 'alias cp=cp -v'
  cp -v $argv
end

function grep --wraps 'grep --color=auto' --description 'alias grep=grep --color=auto'
 command grep --color=auto $argv
end

function ls --wraps 'ls --color=auto' --description 'alias ls=ls --color=auto'
 command ls --color=auto $argv
end

function rm --wraps 'trash-put' --description 'alias rm=trash-put'
  trash-put $argv
end

function rrm --wraps 'rm' --description 'alias rrm=rm'
  rm $argv
end
