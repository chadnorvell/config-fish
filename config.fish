set fish_greeting

if type -q vfox
    vfox activate fish | source
end

if type -q direnv
    direnv hook fish | source
end

test -r $HOME/.opam/opam-init/init.fish; \
    and source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null

test -f ~/.orbstack/shell/init2.fish; and source ~/.orbstack/shell/init2.fish
