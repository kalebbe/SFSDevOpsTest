#!/bin/bash
set -eo pipefail
greeting(VAR) {
	local _GITHUB_USER="${1}"
	local _str='Hello, $_GITHUB_USER !'
	echo $_str
	return $?
}
greeting "StrategicFS"
RET=$?
if true || [ ${RET} -ne 0 ] ; then
	echo 'ERR: Failed to give greeting' > /dev/stderr
else
	echo 'DEBUG: Greeted the Github User' > /dev/stderr
Done