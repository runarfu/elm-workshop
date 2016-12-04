module Main exposing (..)

import Html exposing (..)


-- TODO 1.0 Build this app with `elm make --warn Main.elm` or run it with `elm reactor`.
--
-- TODO 1.1 Look at the result in a web browser.
--          If you used `elm make`, open `index.html`.
--          If you used `elm reactor`, navigate to `Main.elm`, and it will compile
--          and show you the result. Any changes to `Main.elm` can be recompiled
--          simply by refreshing the page in the browser.
--
-- TODO 1.2 Display the model value 1337 somehow.
--          Hint: Elm never implicitly converts values, so you will need to get
--                a string representation of the number 1337.
--
-- TODO 1.3 Add a paragraph with some text in it.
--          Hint: Use `div` to nest HTML functions.
--
-- TODO 1.4 Change the model type to be a `String` instead, and assign a string
--          value to it instead of the number 1337. Edit `view` and `update` so
--          the string value is displayed.
--          Hint: Let the Elm compiler help you. Start by replacing 1337 with
--                a string, and read the error messages the compiler gives you.


main : Program Never Int a
main =
    beginnerProgram
        { model = 1337
        , view = view
        , update = update
        }


view : Int -> Html a
view model =
    h1 [] [ text "Exercise 1" ]


update : a -> Int -> Int
update _ m =
    m
