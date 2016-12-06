module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


-- TODO 4.0 Update the `userInput`-field in the model when text is entered in
--          the textarea.
--          Hint: Only 2 lines need to be edited, one in the view-function and
--                another in the update-function.
--                There is a special syntax for updating fields in a record type.


main : Program Never Model Msg
main =
    beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }


initialModel : Model
initialModel =
    { userInput = "" }


type alias Model =
    { userInput : String }


type Msg
    = TextEntered String


update : Msg -> Model -> Model
update msg model =
    case msg of
        TextEntered string ->
            model


view : Model -> Html Msg
view model =
    div [ style [ ( "text-align", "center" ) ] ]
        [ h1 [] [ text "Exercise 4" ]
        , textarea [] []
        , p [] [ text (toString model) ]
        ]
