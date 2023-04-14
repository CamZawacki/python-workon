#!/bin/bash

function workon() {
    # Check if workon was run without inputs
    if [ $# -eq 0 ]; then
	# If so, list files in env directory
	>&2 eval "ls -1  $PYTHON_ENV_HOME"
    else
	# If not, try to activate the env
	search_dir=$PYTHON_ENV_HOME
	flag=false
	for entry in "$search_dir"*;do
            env=$(basename $entry)
            if [ "$env" = "$1" ]; then
    		source $PYTHON_ENV_HOME/$env/bin/activate
		flag=true
            fi
	done
	if [ $flag = false ]; then
            echo "Environment not found."
	fi
    fi
}


