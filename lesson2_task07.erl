-module(lesson2_task07).
-export([flatten/1, flatten/2, reverse/1]).

flatten(List)->flatten(List,[]).
flatten([],Result)->reverse(Result);
flatten([Hlist|Tlist],Result)->
    if 
      is_list(Hlist) ->
       flatten(Tlist, reverse(flatten(Hlist, Result)));
      true ->
       flatten(Tlist, [Hlist | Result]) 
    end.