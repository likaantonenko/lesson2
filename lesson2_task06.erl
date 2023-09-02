-module(lesson2_task06).
-export([is_palindrome/1, is_palindrome/2, reverse/1, reverse/2]).

reverse(List)->reverse(List,[]).
reverse([],Acc)->Acc;
reverse([H|T],Acc)->reverse(T,[H|Acc]).

is_palindrome(List) -> is_palindrome(List, reverse(List)).
is_palindrome([], []) -> 
    true;
is_palindrome([H | T1], [H | T2]) ->
    is_palindrome(T1, T2);
is_palindrome(_, _) ->
    false.
