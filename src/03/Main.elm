module Main exposing (..)

import Html exposing (beginnerProgram)
import Types exposing (..)
import State exposing (..)
import Views exposing (..)


-- TODO 3.0 Add another button with the text "Clear".
--
-- TODO 3.1 Make the new button clear the model (set it to "").
--          Hint: Add a type constructor to `Msg`.


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
