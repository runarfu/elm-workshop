module Main exposing (main)

import Html
import Types exposing (..)
import State exposing (update)
import Views exposing (view)


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = ""
        , view = view
        , update = update
        }
