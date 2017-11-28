all: setup desktops

setup:
	yarn

desktops:
	@./copy-main.sh
	@./gen-desktops.sh
