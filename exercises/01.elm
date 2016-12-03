module Main exposing (..)

import Html exposing (beginnerProgram, h1, text)


-- TODO 1.0 Build this app with `elm make --warn Main.elm` or run it with `elm reactor`.
--
-- TODO 1.1 Look at the result in a web browser.
--          If you used `elm make`, open `index.html`.
--          If you used `elm reactor`, navigate to `Main.elm`, and it will compile
--          and show you the result. Any changes to `Main.elm` can be recompiled
--          simply by refreshing the page in the browser.
--
-- TODO 1.2 Two of the top-level values in this file (view and update) lack
--          type annotations. `elm make --warn` will tell you this.
--          Fix this by adding type annotations.
--          Hint: If you struggle with finding out which types you should use,
--                try using a type which is clearly *wrong*. Then Elm will give
--                give you an error message containing which types were *inferred*.
--                In many cases these will be the correct types.
--
-- TODO 1.3 Display the model value `1337` somehow.


main : Program Never Int a
main =
    beginnerProgram
        { model = 1337
        , view = view
        , update = update
        }


view _ =
    h1 [] [ text "Exercise 1" ]


update _ m =
    m
