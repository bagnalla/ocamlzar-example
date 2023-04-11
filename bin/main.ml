
let () =
  print_endline "samples:";
  let die = Zar.die_transformer 6 @@ Zar.bits () in
  let samples = Zar.take 10 die in
  List.fold_left (fun _ x -> print_endline (string_of_int x)) () samples;

  print_endline "more samples:";
  let samples = Zar.take 10 (Zar.die 6) in
  List.fold_left (fun _ x -> print_endline (string_of_int x)) () samples;
