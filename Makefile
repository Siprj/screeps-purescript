.PHONY: all publish

.DEFAULT_GOAL := build

all: build publish

build:
	mkdir -p out/
	rm -R bower_components/purescript-screeps-ffi
	bower install
	pulp browserify -O > out/main.js

publish:
	cd remote && stack --ghc-build nopie build
	cd remote && stack --ghc-build nopie exec screeps-remote -- -f ../out/ -b purescript
