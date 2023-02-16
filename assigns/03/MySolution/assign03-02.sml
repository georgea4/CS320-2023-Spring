(* ****** ****** *)
(*
use "./../assign03.sml";
use "./../assign03-lib.sml";
*)
(* ****** ****** *)

(*
//
HX-2023-02-10: 10 points
list_range(x, y) returns a list consisting
of all the integers i satisfying x <= i < y.
//
For instance,
list_range(1, 1) = []
list_range(2, 1) = []
list_range(0, 5) = [0,1,2,3,4]
//
Please give a tail-recusive implementation of
the list_range function
//
fun list_range(x: int, y: int) : int list =
    let
        fun helper(x: int, y: int, acc: int list) : int list =
            if x >= y then List.rev acc
            else helper(x + 1, y, x :: acc)
    in
        helper(x, y, [])
    end;

val my_list = list_range(1, 1);

List.app (fn x => print(Int.toString(x) ^ " ")) my_list;

*)

(* ****** ****** *)

(* end of [CS320-2023-Spring-assign03-02.sml] *)
