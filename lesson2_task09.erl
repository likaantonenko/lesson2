-module(lesson2_task09).
-export([pack/1, pack/3, reverse/1, reverse/2]).

reverse(L) -> reverse(L, []).
reverse([], S) -> S;
reverse([H|T], S)->reverse(T, [H|S]).

pack(List) -> pack(List, [], []).
pack([], Current, Result) -> reverse([Current | Result]);
pack([H|T],[], Result) -> pack(T, [H], Result);
pack(List, Current, Result) ->
     [Hlist | Tlist] = List,
     [Hcurrent | _ ] = Current,
     if
       Hlist == Hcurrent ->
         pack(Tlist, [Hlist | Current], Result);
     true ->
         pack(Tlist, [Hlist], [Current | Result])
     end.   
