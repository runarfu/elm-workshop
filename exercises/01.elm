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
-- TODO 1.2 Neither of the 3 top-level values in this file (main, view and update)
--          have type annotations. `elm make --warn` will tell you this.
--          Fix this by adding type annotations for the 3 top-level values.
--
-- TODO 1.3 Display the model value `1337` somehow.


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
