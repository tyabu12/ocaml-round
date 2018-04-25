build:
	jbuilder build @install

test:
	jbuilder runtest

doc:
	jbuilder build @doc

clean:
	jbuilder clean

.PHONY: build test clean doc