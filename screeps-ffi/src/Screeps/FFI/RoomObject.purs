module Screeps.FFI.RoomObject where

import Screeps.FFI.RoomPosition (RoomPosition)
import Screeps.FFI.Types (Room)

class RoomObject a where
    pos :: a -> RoomPosition
    room :: a -> Room
