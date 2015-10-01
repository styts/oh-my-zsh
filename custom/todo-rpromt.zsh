todo_count(){
  if $(which todo.sh &> /dev/null)
  then
    num=$(echo $(todo.sh ls | grep "^[0-9]" | wc -l))
    let todos=num
    if [ $todos != 0 ]
    then
      echo "$todos"
    else
      echo ""
    fi
  else
    echo ""
  fi
}
function zle-line-init zle-keymap-select {
RPS1="$(todo_count)"
    RPS2=$RPS1
    zle reset-prompt
}
