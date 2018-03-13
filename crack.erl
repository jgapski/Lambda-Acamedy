-module(crack).
-export([gogo/0]).

gogo() ->
    gogo(1).
gogo(100) ->
    "PoP";
gogo(Number) when ((Number rem 3) == 0) ->
    "Crackle" ++ gogo(Number+1);
gogo(Number) when ((Number rem 5) == 0) ->
    "PoP" ++ gogo(Number+1);
gogo(Number) when ((Number rem 15) == 0) ->
    "CracklePop" ++ gogo(Number+1);
gogo(Number) ->
    integer_to_list(Number) ++ gogo(Number + 1).



