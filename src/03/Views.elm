module Views exposing (view)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Types exposing (..)


view : String -> Html Msg
view model =
    div []
        [ h1 [] [ text "Exercise 3" ]
        , p [] [ text model ]
        , button [ onClick AppendSomeText ] [ text "Append some text" ]
        ]
