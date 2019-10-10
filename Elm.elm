module Main exposing (main)

import Html exposing (Html, text, div)
import String exposing (fromInt)
import List
import Browser

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

printHtmlString : Int -> Html ()
printHtmlString =
    text << fromInt

view : () -> Html ()
view _ =
    div []
        ([ printHtmlString <| add 1 2 ] ++ each printHtmlString [ 1, 2, 3 ])

update : () -> () -> ()
update _ _ = ()

main : Program () () ()
main =
    Browser.sandbox
        { init = ()
        , view = view
        , update = update
        }
