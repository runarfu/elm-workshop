module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (..)


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


type alias Model =
    String


type Msg
    = AppendSomeText


update : Msg -> Model -> Model
update msg model =
    case msg of
        AppendSomeText ->
            model ++ " (some text)"


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Exercise 3" ]
        , p [] [ text model ]
        , button [ onClick AppendSomeText ] [ text "Append some text" ]
        ]
