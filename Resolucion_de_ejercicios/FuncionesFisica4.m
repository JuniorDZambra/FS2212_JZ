(* ::Package:: *)

BeginPackage["FuncionesFisica4`"];


FB::usage="FB[q,\!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\),\!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\)] retorna la fuerza magn\[EAcute]tica que act\[UAcute]a sobre una carga puntual q que se mueve con velocidad \!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\) y est\[AAcute] inmersa en un campo magn\[EAcute]tico \!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\).
FB[I,\!\(\*OverscriptBox[\(\[ScriptL]\), \(\[RightVector]\)]\),\!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\)] retorna la fuerza magn\[EAcute]tica que act\[UAcute]a sobre un alambre de corriente I inmerso en un campo magn\[EAcute]tico uniforme \!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\). \!\(\*OverscriptBox[\(\[ScriptL]\), \(\[RightVector]\)]\) es un vector que une los extremos del alambre y est\[AAcute] dirigido desde el extremo por donde entra la corriente hacia el extremo por donde sale.";


MFB::usage ="MFB[q,v,B,\[Theta]] retorna la magnitud de la fuerza magn\[EAcute]tica que act\[UAcute]a sobre una carga puntual q que se mueve con rapidez v y est\[AAcute] inmersa en un campo magn\[EAcute]tico de intensidad B. \[Theta] es el menor \[AAcute]ngulo entre \!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\) y \!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\). En caso de que el \[UAcute]ltimo argumento de la funci\[OAcute]n se omita, se toma por defecto el valor \!\(\*FractionBox[\(\[Pi]\), \(2\)]\) (es decir, \!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\)\[Perpendicular]\!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\)).";


FBv::usage ="FBv[q,\!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\),\!\(\*OverscriptBox[\(F\), \(\[RightVector]\)]\),\[Theta]] retorna la velocidad que lleva una carga puntual q inmersa en un campo magn\[EAcute]tico \!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\) y sobre la que act\[UAcute]a una fuerza magn\[EAcute]tica \!\(\*OverscriptBox[\(F\), \(\[RightVector]\)]\). \[Theta] es el menor \[AAcute]ngulo entre \!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\) y \!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\). En caso de que el \[UAcute]ltimo argumento de la funci\[OAcute]n se omita, se toma por defecto el valor \!\(\*FractionBox[\(\[Pi]\), \(2\)]\) (es decir, \!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\)\[Perpendicular]\!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\)).";


FBl::usage ="FBl[I,\!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\),\!\(\*OverscriptBox[\(F\), \(\[RightVector]\)]\),\[Theta]] retorna el vector \!\(\*OverscriptBox[\(\[ScriptL]\), \(\[RightVector]\)]\) del alambre de corriente I que est\[AAcute] inmerso en un campo magn\[EAcute]tico \!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\) y sobre el que act\[UAcute]a una fuerza magn\[EAcute]tica \!\(\*OverscriptBox[\(F\), \(\[RightVector]\)]\). \!\(\*OverscriptBox[\(\[ScriptL]\), \(\[RightVector]\)]\) es un vector que une los extremos del alambre y est\[AAcute] dirigido desde el extremo por donde entra la corriente hacia el extremo por donde sale. \[Theta] es el menor \[AAcute]ngulo entre \!\(\*OverscriptBox[\(\[ScriptL]\), \(\[RightVector]\)]\) y \!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\). En caso de que el \[UAcute]ltimo argumento de la funci\[OAcute]n se omita, se toma por defecto el valor \!\(\*FractionBox[\(\[Pi]\), \(2\)]\) (es decir, \!\(\*OverscriptBox[\(\[ScriptL]\), \(\[RightVector]\)]\)\[Perpendicular]\!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\)).";


FBB::usage ="FBB[q,\!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\),\!\(\*OverscriptBox[\(F\), \(\[RightVector]\)]\),\[Theta]] retorna el campo magn\[EAcute]tico en el que est\[AAcute] inmersa una carga puntual q que viaja con una velocidad \!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\) y sobre la que act\[UAcute]a una fuerza magn\[EAcute]tica \!\(\*OverscriptBox[\(F\), \(\[RightVector]\)]\). \[Theta] es el menor \[AAcute]ngulo entre \!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\) y \!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\). En caso de que el \[UAcute]ltimo argumento de la funci\[OAcute]n se omita, se toma por defecto el valor \!\(\*FractionBox[\(\[Pi]\), \(2\)]\) (es decir, \!\(\*OverscriptBox[\(v\), \(\[RightVector]\)]\)\[Perpendicular]\!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\)).
FBB[I,\!\(\*OverscriptBox[\(\[ScriptL]\), \(\[RightVector]\)]\),\!\(\*OverscriptBox[\(F\), \(\[RightVector]\)]\),\[Theta]] retorna el campo magn\[EAcute]tico en el que est\[AAcute] inmerso un alambre de corriente I. \!\(\*OverscriptBox[\(\[ScriptL]\), \(\[RightVector]\)]\) es un vector que une los extremos del alambre y est\[AAcute] dirigido desde el extremo por donde entra la corriente hacia el extremo por donde sale. \[Theta] es el menor \[AAcute]ngulo entre \!\(\*OverscriptBox[\(\[ScriptL]\), \(\[RightVector]\)]\) y \!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\). En caso de que el \[UAcute]ltimo argumento de la funci\[OAcute]n se omita, se toma por defecto el valor \!\(\*FractionBox[\(\[Pi]\), \(2\)]\) (es decir, \!\(\*OverscriptBox[\(\[ScriptL]\), \(\[RightVector]\)]\)\[Perpendicular]\!\(\*OverscriptBox[\(B\), \(\[RightVector]\)]\)).";


Begin["`Private`"];


FB[q_,v_,B_] := q v\[Cross]B


MFB[q_,v_,B_,\[Theta]_: \[Pi]/2] := q v B Sin[\[Theta]]


FBv[q_,B_,F_,\[Theta]_: \[Pi]/2] := B\[Cross]F/(q Norm[B]^2)+(Norm[F] Cot[\[Theta]])/(Abs[q] Norm[B]^2) B


FBl[I_,B_,F_,\[Theta]_: \[Pi]/2] := B\[Cross]F/(I Norm[B]^2)+(Norm[F] Cot[\[Theta]])/(Abs[I] Norm[B]^2) B


FBB[q_,v_,F_,\[Theta]_: \[Pi]/2] := F\[Cross]v/(q Norm[v]^2)+(Norm[F] Cot[\[Theta]])/(Abs[q] Norm[v]^2) v


End[];


EndPackage[];
