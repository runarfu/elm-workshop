module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (..)


-- TODO 5.0 Display the input string UPPERCASED somewhere.
--          Hint: Look at the `String` and `Char` modules. You will have to
--                import them to use them.
--
-- TODO 5.1 Set the textarea to be automatically in focus when the page is loaded.
--
-- TODO 5.2 Add another String field in the model called `wordsToWrite` and set it
--          to some short sentence of your own liking.
--
-- TODO 5.3 Display `wordsToWrite`. Also display something indicating whether
--          the input string equals `wordsToWrite` or not.
--
-- TODO 5.4 Display whether the `inputString` is a *prefix* of `wordsToWrite`,
--          i.e. is what's written so far correct or not?


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
            { model | userInput = string }


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Exercise 5" ]
        , textarea [ onInput TextEntered ] []
        , p [] [ text (toString model) ]
        ]
