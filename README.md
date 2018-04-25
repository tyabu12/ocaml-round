# round

[![Build Status](https://travis-ci.org/tyabu12/ocaml-round.svg?branch=master)](https://travis-ci.org/tyabu12/ocaml-round)

**Round** is the library to manages the floating-point rounding direction for 
binary operators and sqrt in OCaml. 


## Requirements

- OCaml (>= 4.02.0)
- opam


## Installation

To install the library without test:
```
$ opam pin add -y round .
```

To install the library with test:
```
$ opam pin add -yn round .
$ opam install -t round
```
The result will be the following:
```
x = 1.000000e+00, y = 1.000000e-40, z = -1.000000e-40
round NearestTiesToEven:
  x + y = 1.000000000000000000e+00
  x + z = 1.000000000000000000e+00
round ToZero:
  x + y = 1.000000000000000000e+00
  x + z = 9.999999999999998890e-01
round Up:
  x + y = 1.000000000000000222e+00
  x + z = 1.000000000000000000e+00
round Down:
  x + y = 1.000000000000000000e+00
  x + z = 9.999999999999998890e-01
...
```
You can confirm behavior of floating-point rounding direction.


## Uninstallation
```
$ opam pin remove round
```


## Documentation

To generate docs, [odoc](https://github.com/ocaml/odoc) (for docs generation) 
is needed.

```
$ jbuilder build @doc
```

The generated docs can then be found locally at
`./_build/default/_doc/_html/index.html`.


## License

See [LICENSE.md](LICENSE.md)
