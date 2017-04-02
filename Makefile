CAMLC = ocamlc
CAMLOPT = ocamlopt
CAMLMKLIB = ocamlmklib

EXEC = test testopt

all: round.cma round.cmxa $(EXEC)

round.o: round.c
	$(CAMLC) -c $<

dll_round_stubs.so: round.o
	$(CAMLMKLIB) -o round_stubs $<

round.mli: round.ml
	$(CAMLC) -i $< > $@

round.cmi: round.mli
	$(CAMLC) -c $<

round.cmo: round.ml round.cmi
	$(CAMLC) -c $<

round.cma: round.cmo dll_round_stubs.so
	$(CAMLC) -a -o $@ $< -dllib -lround_stubs

round.cmx: round.ml round.cmi
	$(CAMLOPT) -c $<

round.cmxa: round.cmx dll_round_stubs.so
	$(CAMLOPT) -a -o $@ $< -cclib -lround_stubs

round_test.mli: round_test.ml
	$(CAMLC) -i $< > $@

round_test.cma: round_test.ml
	$(CAMLC) -c $<

round_test.cmx: round_test.ml
	$(CAMLOPT) -c $<

test: round.cma round_test.cma
	$(CAMLC) -o $@ round.cma round_test.ml -I .

testopt: round.cmxa round_test.cmx
	$(CAMLOPT) -o $@ round.cmxa round_test.ml -I .

clean:
	rm -f ./*.[oa] ./*.so ./*.mli ./*.cm[ixoa] ./*.cmxa $(EXEC)
