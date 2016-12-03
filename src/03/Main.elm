module Main exposing (..)

import Html exposing (beginnerProgram)
import Types exposing (..)
import State exposing (..)
import Views exposing (..)


main : Program Never Model Msg
main =
    beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }


initialModel : Model
initialModel =
    "Hello"
