.PHONY: all

all:
	rm -R bower_components/purescript-screeps-ffi && bower install && pulp browserify -O > output.js
