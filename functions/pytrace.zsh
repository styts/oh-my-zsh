function pytrace () {
    last_command=$history[$[HISTCMD-1]]
    ipython --pdb --c="%run $last_command"
}
