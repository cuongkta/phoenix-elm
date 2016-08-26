module SeatSaver where

import Html exposing (ul, li, text)
import Html.Attributes exposing (class)

main =
    view init 

type alias Seat =
    { seatNo : Int
    , occupied : Bool
    }

type alias Model =
    List Seat

init =
  [ { seatNo = 1, occupied = False }
  , { seatNo = 2, occupied = False }
  , { seatNo = 3, occupied = False }
  , { seatNo = 4, occupied = False }
  , { seatNo = 5, occupied = False }
  , { seatNo = 6, occupied = False }
  , { seatNo = 7, occupied = False }
  , { seatNo = 8, occupied = False }
  , { seatNo = 9, occupied = True }
  , { seatNo = 10, occupied = False }
  , { seatNo = 11, occupied = False }
  , { seatNo = 12, occupied = False }
  , { seatNo = 13, occupied = False }
  , { seatNo = 14, occupied = False }
  ]

{-view =
    Html.text "Woo hoo, I'm in a View"-}

view model =
  ul [ class "seats" ] (List.map seatItem model)

seatItem seat =
  li [ class "seat available" ] [ text (toString seat.seatNo) ]