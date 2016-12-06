module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)


-- Eksempelprogram med norske navn på alt som vi definerer selv - for å tydeliggjøre
-- at ofte brukte begreper som `Msg` og `Model` er konvensjoner, og trenger ikke
-- å bli fulgt.
-- TODO 0.0 Legg til funksjonalitet for å kvadrere gjeldende tall (knapp og logikk).


main : Program Never MinDatamodell Melding
main =
    beginnerProgram
        { model = 0
        , view = vis
        , update = oppdater
        }


type alias MinDatamodell =
    Int


type Melding
    = LeggTil
    | TrekkFra
    | MultipliserMed Int
    | SettTilNull


vis : MinDatamodell -> Html Melding
vis datamodell =
    div [ style [ ( "text-align", "center" ) ] ]
        [ h1 [] [ text (toString datamodell) ]
        , button [ onClick TrekkFra ] [ text "Minus 1" ]
        , button [ onClick LeggTil ] [ text "Pluss 1" ]
        , button [ onClick (MultipliserMed 2) ] [ text "x 2" ]
        , button [ onClick (MultipliserMed 10) ] [ text "x 10" ]
        , button [ onClick SettTilNull ] [ text "0" ]
        ]


oppdater : Melding -> MinDatamodell -> MinDatamodell
oppdater melding datamodell =
    case melding of
        LeggTil ->
            datamodell + 1

        TrekkFra ->
            datamodell - 1

        MultipliserMed faktor ->
            datamodell * faktor

        SettTilNull ->
            0
