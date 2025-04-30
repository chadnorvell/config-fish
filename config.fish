set fish_greeting

if type -q vfox
    vfox activate fish | source
end

if type -q direnv
    direnv hook fish | source

test -f ~/.orbstack/shell/init2.fish; and source ~/.orbstack/shell/init2.fish
