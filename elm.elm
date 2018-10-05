module Elm exposing (main)

import Html
import List
import String


add : Int -> Int -> Int
add a =
    (+) a


each : (a -> b) -> List a -> List b
each f list =
    case list of
        [] ->
            []

        x :: xs ->
            f x :: each f xs


printHtmlString : Int -> Html Msg
printHtmlString =
    text << fromInt


main : Html Msg
main =
    div []
        ([ printHtmlString <| add 1 2 ] ++ each printHtmlString [ 1, 2, 3 ])
