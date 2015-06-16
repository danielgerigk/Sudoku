(* A Sudoku solver in Coq, v0.1, https://github.com/danielgerigk/Sudoku *)

Inductive A :=
   | a1 : A
   | a2 : A
   | a3 : A.

Definition B := (A*A)%type.

Definition M := (B*B*B -> option unit).
(* Framework to formalize Sudoku problems and their solutions *)

Definition translate : (B*B -> option B) -> M.
(* The type B*B -> option B is used by the user, the type M is used by the algorithm *)
admit.
Defined.

Definition isSudoku : forall m:M, Prop.
(* Checks whether the conditions to be a valid Sudoku solution are satisfied. *)
(*
(forall x y : B, exists! z : B, m(x,y,z) =  Some tt) /\
(forall x z : B, exists! y : B, m(x,y,z) =  Some tt) /\
(forall y z : B, exists! x : B, m(x,y,z) =  Some tt) /\
(forall z : B, forall x1 y1 : A, exists! x2 y2 : A, m((x1,x2),(y1,y2),z) =  Some tt).
*)
admit.
Defined.

Definition isContinuation : forall m1 m2 : M, Prop.
(* Checks whether m2 is a continuation of m1 *)
(*
forall x y z : B, m1(x,y,z) = None \/ m1(x,y,z) = m2(x,y,z).
*)
admit.
Defined.

Definition solve : forall m : M, exists n : M, isContinuation m n /\ isSudoku(n).
(* Solve the Sudoku problem m *)
(*
*)
admit.
Defined.











