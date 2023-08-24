-module(lesson2).
-export([element_at/2,element_at/3]).

element_at(List,N)->element_at(List,N,1).
element_at([H|T],N,I)->
     if 
       I==N -> H;
     true->
       element_at(T,N,I+1)
     end.