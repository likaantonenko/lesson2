-module(lesson2_task09).
-export([encode/1, encode/2, reverse/1, reverse/2]).

reverse(List)->reverse(List,[]).
reverse([],Acc)->Acc;
reverse([H|T],Acc)->reverse(T,[H|Acc]).

encode(List)->encode(List,[]).
encode([], Result)->reverse(Result);
encode([Hlist|Tlist],[]) -> encode(Tlist,[{1,Hlist}]);
encode([Hlist|Tlist],[Hresult|Tresult])->
    {Amount, Atom} = Hresult,
    if
        Hlist == Atom ->
        encode(Tlist, [{Amount+1,Atom}|Tresult]);
    true ->
        encode(Tlist,[{1, Hlist}|[Hresult|Tresult]])
    end.