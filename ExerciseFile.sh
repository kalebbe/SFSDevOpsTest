#!/bin/bash
set -eo pipefail
greeting() {
	local _GITHUB_USER="${1}"
	local _str="Hello, $_GITHUB_USER !"
	echo "$_str"
	return $?
}

_username=git config --get-regexp user.name

greeting "$_username" 
RET=$?
if true || [ ${RET} -ne 0 ] ; then
	echo 'ERR: Failed to give greeting' > /dev/stderr
fi
	echo 'DEBUG: Greeted the Github User' > /dev/stderr
done