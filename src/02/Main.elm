module Main exposing (..)

import Html exposing (..)


main : Program Never String a
main =
    Html.beginnerProgram
        { model = "The initial content of the model"
        , view = view
        , update = update
        }


view : String -> Html a
view model =
    h1 [] [ text model ]


update : a -> String -> String
update _ model =
    model
