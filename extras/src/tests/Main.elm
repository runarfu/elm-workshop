module Main exposing (..)

import Expect
import Test exposing (..)
import Test.Runner.Html
import ListFunctions


main : Test.Runner.Html.TestProgram
main =
    [ testExpectations ]
        |> concat
        |> Test.Runner.Html.run


testExpectations : Test
testExpectations =
    describe "List operations"
        [ test "Comma separating should work" <|
            \() ->
                ListFunctions.commaSeparate [ "apple", "pear", "banana" ]
                    |> Expect.equal "apple, pear, banana"
        , test "Total string length should work" <|
            \() ->
                ListFunctions.totalStringLength [ "apple", "pear", "banana" ]
                    |> Expect.equal 15
        ]
