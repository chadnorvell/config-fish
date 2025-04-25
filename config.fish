set fish_greeting

if type -q vfox
    vfox activate fish | source
end

test -f ~/.orbstack/shell/init2.fish; and source ~/.orbstack/shell/init2.fish
