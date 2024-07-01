#!/bin/bash

_wm_completions()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local commands="
	start
	stop
	restart
	status
	show-config
	configure
	help
	"

    COMPREPLY=( $(compgen -W "${commands}" -- ${cur}) )
    return 0
}

complete -F _wm_completions wm
