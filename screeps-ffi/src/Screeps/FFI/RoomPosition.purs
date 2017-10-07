module Screeps.FFI.RoomPosition where

import Screeps.FFI.Utils (unsafeField)


foreign import data RoomPosition :: Type

roomName :: RoomPosition -> String
roomName obj = unsafeField "roomName" obj

x :: RoomPosition -> String
x obj = unsafeField "x" obj

y :: RoomPosition -> String
y obj = unsafeField "y" obj

-- TODO: All other functions form RoomPosition
