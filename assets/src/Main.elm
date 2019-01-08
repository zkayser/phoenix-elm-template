module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class)

main = 
  Browser.sandbox { init = 0, update = update, view = view }

type Msg = Increment | Decrement

type alias Model = Int

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment -> model + 1
    Decrement -> model - 1

view : Model -> Html Msg
view model =
  div [ class "elm-container" ]
    [ button [ onClick Decrement, class "button" ] [ text "-" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment, class "button" ] [ text "+" ] 
    , div [] [ text "And here is some more stuff from Elm! Yo!"]
    ]
