-module(lesson2_task08).
-export([compress/1, compress/2, reverse/1]).


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