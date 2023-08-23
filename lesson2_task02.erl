-module(lesson2_task02).
-export([but_last/1,but_last/2]).

but_last(List)->but_last(List,[]).
but_last([],Acc)->Acc;
but_last([H|T],_)->
    [Head|Tail] = T,
    if 
      Tail == [] -> [H,Head];
    true->
      but_last(T,[H,Head])
    end.  