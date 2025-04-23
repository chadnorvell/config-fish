function untgz --wraps='mkdir $argv && tar -xzf $argv.tar.gz -C $argv'
    mkdir $argv && tar -xzf $argv.tar.gz -C $argv
end
