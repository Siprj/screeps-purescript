module Screeps.FFI.RoomObject where

import Screeps.FFI.RoomPosition (RoomPosition)
import Screeps.FFI.Types (Room)

class RoomObject a b | a -> b where
    pos :: a -> RoomPosition
    room :: a -> b Room

-- DEFAULT IMPLEMENTSTION
-- instance spawnRoomObject :: RoomObject Spawn Always where
--     pos :: a -> RoomPosition
--     pos obj = unsafeField "pos" obj
--
--     room :: a -> b Room
--     room obj = unsafeField "room" obj
