(* ****** ****** *)
(*
use "./../assign03.sml";
use "./../assign03-lib.sml";
*)
(* ****** ****** *)

(*
HX-2023-02-10: 20 points
Given a list of integers xs,
please implement a function that find
the longest ascending subsequences of [xs].
If there are more than one such sequences,
the left most one should be returned.

fun list_longest_ascend(xs : int list) : int list =
    let
        fun helper(xs, curr, acc, result) =
            case xs of
                [] => List.rev curr :: result
              | x :: xs' =>
                  if (null curr) orelse (hd curr < x) then
                      helper(xs', x :: curr, acc, result)
                  else
                      helper(xs', [x], List.rev curr :: acc, result)
    in
        case helper(xs, [], [], []) of
            [] => []
          | seq :: seqs =>
              if length seq > length (hd seqs) then seq
              else hd seqs
    end;
*)

(* ****** ****** *)

(* end of [CS320-2023-Spring-assign03-04.sml] *)
