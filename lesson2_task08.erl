-module(lesson2_task08).
-export([compress/1, compress/2, reverse/1, reverse/2]).

reverse(List)->reverse(List,[]).
reverse([],Acc)->Acc;
reverse([H|T],Acc)->reverse(T,[H|Acc]).

compress(List)->compress(List,[]).
compress([], Result) -> reverse(Result);
compress([Hlist| Tlist], []) -> compress(Tlist,[Hlist]);
compress([Hlist| Tlist], [Hresult | Tresult])->
         if 
         Hlist /= Hresult -> 
              compress(Tlist,[Hlist| [Hresult | Tresult]]);
         true ->
              compress(Tlist,[Hresult| Tresult])
        end.
