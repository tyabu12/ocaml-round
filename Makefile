all: build

build:
	dune build @install

test:
	dune build @runtest --force

install:
	dune install

uninstall:
	dune uninstall

doc:
	dune build @doc

clean:
	dune clean

.PHONY: all build test install uninstall doc clean