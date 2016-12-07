module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import String


-- TODO 6.0 Displaying two boolean values is boring. Instead, style the display
--          of `wordsToWrite` so that it's easy to see how far in the `wordsToWrite`
--          you've come.


main : Program Never Model Msg
main =
    beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }


initialModel : Model
initialModel =
    { wordsToWrite = "Typesafe frontend is pretty cool"
    , userInput = ""
    }


type alias Model =
    { wordsToWrite : String
    , userInput : String
    }


type Msg
    = TextEntered String


update : Msg -> Model -> Model
update msg model =
    case msg of
        TextEntered string ->
            { model | userInput = string }


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Exercise 6" ]
        , p [] [ text model.wordsToWrite ]
        , textarea [ onInput TextEntered ] []
        , p [] [ text ("Input is prefix of wordsToWrite: " ++ (toString (String.startsWith model.userInput model.wordsToWrite))) ]
        , p [] [ text ("Input equals wordsToWrite: " ++ (toString (model.userInput == model.wordsToWrite))) ]
        , p [] [ text (toString model) ]
        ]
