module Screeps.FFI.RoomObject where

import Screeps.FFI.RoomPosition (RoomPosition)
import Screeps.FFI.Types (Room)

class RoomObject a b | a -> b where
    pos :: a -> RoomPosition
    room :: a -> b Room
