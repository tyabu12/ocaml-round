# round

[![Build Status](https://travis-ci.org/tyabu12/ocaml-round.svg?branch=master)](https://travis-ci.org/tyabu12/ocaml-round)

**round** is the library to manages the floating-point rounding direction for 
binary operators and sqrt in OCaml. 


## Installation

Make sure you have the required dependencies installed:
- GNU make
- OCaml (>= 4.02.3)
- [Jbuilder](https://github.com/ocaml/dune) (>= 1.0+beta20)

Then, run:
```
$ make
$ make install
```

### Test

You can confirm behavior of floating-point rounding direction:
```
$ make test
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


## Documentation

To generate docs, [odoc](https://github.com/ocaml/odoc) is required.
```
$ make doc
```

The generated docs can then be found locally at
`./_build/default/_doc/_html/index.html`.


## Installation by Opam

You can install round directly by opam.

### Requirements

- OCaml (>= 4.02.3)
- opam

### Installation

```
$ opam pin add -y round git@github.com:tyabu12/ocaml-round.git
```

### Uninstallation
```
$ opam pin remove round
```


## License

See [LICENSE](LICENSE.md)
