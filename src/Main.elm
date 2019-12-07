module Main exposing (..)

import Browser exposing (Document)
import Browser.Navigation as Nav
import Html exposing (Html)
import Url exposing (Url)


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = always NoOp
        , onUrlChange = always NoOp
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


type alias Model =
    {}


type Msg
    = NoOp


init : () -> Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Document Msg
view model =
    { title = "My app"
    , body =
        [ Html.text "Duh." ]
    }
