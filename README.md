# round

**Round** is the library to manages the floating-point rounding direction for 
binary operators and sqrt in OCaml. 

## Requirement

- OCaml (>= 4.06.0)
- [Jbuilder](https://github.com/ocaml/dune) (>= 1.0+beta20)
- [odoc](https://github.com/ocaml/odoc) (for docs generation)

## Build  & Test

To build the library:
```
$ make build
```

To run the tests:
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
You can confirm behavior of floating-point rounding direction.

## Documentation

To generate docs:
```
$ make doc
```

The generated docs can then be found locally at
`./_build/default/_doc/_html/index.html`.

## License

See [LICENSE.md](LICENSE.md)
