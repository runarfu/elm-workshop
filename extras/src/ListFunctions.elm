module ListFunctions exposing (..)

import String


commaSeparate : List String -> String
commaSeparate =
    String.join ", "


totalStringLength : List String -> Int
totalStringLength =
    List.sum << List.map String.length
