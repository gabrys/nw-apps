all: setup desktops

setup:
	yarn

desktops:
	@./gen-desktops.sh
