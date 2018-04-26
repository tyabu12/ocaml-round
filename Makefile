all: build

build:
	jbuilder build --root . @install

test:
	jbuilder build --root . @runtest

install:
	jbuilder install --root .

uninstall:
	jbuilder uninstall --root .

doc:
	jbuilder build --root . @doc

clean:
	jbuilder clean --root .

.PHONY: all build test install uninstall doc clean
