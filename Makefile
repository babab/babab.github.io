PIP = python3 -m pip
TUH = tuh

help:
	#  help     - show this help information
	#  html	    - build index.html from index.tuh
	#
	#  install  - get-pipx and pipx install tuhinga
	#  get-pipx - install pipx if it isn't in PATH

html:
	$(TUH) index.tuh >| index.html
	$(TUH) 404.tuh >| 404.html

install:
	command -v tuh >/dev/null || make get-pipx
	command -v tuh >/dev/null || pipx install tuhinga

get-pipx:
	command -v pipx >/dev/null || ${PIP} install --user pipx
