-module(lesson2_task02).
-export([but_last/1]).

but_last([El1,El2]) -> {El1,El2};
but_last([_|T]) -> but_last(T);
but_last(_) -> invalid. 
