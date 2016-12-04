module Main exposing (..)

import Html exposing (..)


-- TODO 2.0 Introduce a type called `Msg` (an Elm convention). Replace the
--          type variables `a` with this type.
--
-- TODO 2.1 Add a button to the view.
--
-- TODO 2.2 Make Elm send a message to `update` (of the type you introduced in 2.0)
--          when the button is pressed.
--
-- TODO 2.3 Make your `update`-function do something with the model when the
--          button has been pressed. For instance, append some text to the model.
--          Hint: Using `_` as parameters in a function means disregarding the
--                input value. You need to swap this with some name to be able
--                to use the value Elm sends as the first argument to `update`.


main : Program Never String a
main =
    Html.beginnerProgram
        { model = "The initial content of the model"
        , view = view
        , update = update
        }


view : String -> Html a
view model =
    div []
        [ h1 [] [ text "Exercise 2" ]
        , p [] [ text model ]
        ]


update : a -> String -> String
update _ model =
    model
