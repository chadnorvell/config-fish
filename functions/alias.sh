function grep --wraps 'grep --color=auto' --description 'alias grep=grep --color=auto'
 command grep --color=auto $argv
end

function ls --wraps 'ls --color=auto' --description 'alias ls=ls --color=auto'
 command ls --color=auto $argv
end

