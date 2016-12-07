module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import String


-- TODO 7.0


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
        , viewWordsToWriteWithHighlighting model
        , textarea [ onInput TextEntered ] []
        , p [] [ text ("Input is prefix of wordsToWrite: " ++ (toString (String.startsWith model.userInput model.wordsToWrite))) ]
        , p [] [ text ("Input equals wordsToWrite: " ++ (toString (model.userInput == model.wordsToWrite))) ]
        , p [] [ text (toString model) ]
        ]


viewWordsToWriteWithHighlighting : Model -> Html Msg
viewWordsToWriteWithHighlighting model =
    let
        splitOnPrefix s1 s2 =
            if String.startsWith s1 s2 then
                Just ( s1, String.dropLeft (String.length s1) s2 )
            else
                Nothing

        correctStyle =
            style [ ( "color", "green" ), ( "background-color", "gray" ) ]

        wrongStyle =
            style [ ( "color", "red" ), ( "background-color", "gray" ) ]
    in
        case splitOnPrefix model.userInput model.wordsToWrite of
            Just ( firstPart, rest ) ->
                div []
                    [ span [ correctStyle ] [ text firstPart ]
                    , span [] [ text rest ]
                    ]

            Nothing ->
                div [ wrongStyle ] [ text model.wordsToWrite ]
