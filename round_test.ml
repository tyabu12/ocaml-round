let print x y z op op_char =
  let print_line mode mode_name =
    Printf.printf "  round %s:\n    x %c y = %.18e\n    x %c z = %.18e\n"
      mode_name op_char (op mode x y) op_char (op mode x z) in
  Printf.printf "x = %e, y = %e, z = %e\n" x y z;
  print_line Round.NearestTiesToEven "NearestTiesToEven";
  print_line Round.ToZero "ToZero";
  print_line Round.Up "Up";
  print_line Round.Down "Down";
  Printf.printf "\n"

let _ =
  let f op op_char =
    print   1.0  1e-40 (-1e-40) op op_char;
    print (-1.0) 1e-40 (-1e-40) op op_char in
  f Round.add '+';
  f Round.sub '-';
  f Round.mul '*';
  f Round.div '/'
