build:
	jbuilder build @install

install:
	jbuilder install

test:
	jbuilder runtest

doc:
	jbuilder build @doc

clean:
	jbuilder clean

.PHONY: build test clean doc