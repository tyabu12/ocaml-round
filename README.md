# round

[![Build Status](https://travis-ci.org/tyabu12/ocaml-round.svg?branch=master)](https://travis-ci.org/tyabu12/ocaml-round)

**round** is a floating-point rounding control library for OCaml.

**round** provides functions about floating-point with specified rounding directions.

**round** follows IEE-754 that defines rounding behaviors about basic operators and sqrt functions.

## Requirements

* GNU make
* OCaml (>= 4.02)
* [dune](https://github.com/ocaml/dune) (>= 1.2)

## Installation

### Using opam

```sh
opam pin add -y round git@github.com:tyabu12/ocaml-round.git
```

### From sources

```sh
make
make install
```

## Test

You can confirm behavior of floating-point rounding direction:

```sh
$ make test
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

```sh
make doc
```

The generated docs can then be found locally at `_build/default/_doc/_html/index.html`.

## License

See [LICENSE](LICENSE.md).