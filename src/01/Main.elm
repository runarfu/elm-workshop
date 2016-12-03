module Main exposing (..)

import Html exposing (beginnerProgram, h1, text)


main =
    beginnerProgram
        { model = 0
        , view = view
        , update = update
        }


view _ =
    h1 [] [ text "Hello world" ]


update _ m =
    m
