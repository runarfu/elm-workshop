module Views exposing (view)

import Html exposing (..)
import Types exposing (..)


view : String -> Html Msg
view model =
    h1 [] [ text "Hello world" ]
