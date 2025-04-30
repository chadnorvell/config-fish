set fish_greeting

if type -q vfox
    vfox activate fish | source
end

if type -q direnv
    direnv hook fish | source
end
