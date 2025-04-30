function nvg --description 'launch neovide here'
  nohup neovide . > /dev/null 2>&1 &
  disown
end
