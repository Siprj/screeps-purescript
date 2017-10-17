module Screeps.FFI.Source where

import Screeps.FFI.RoomObject (class RoomObject)
import Screeps.FFI.RoomPosition (RoomPosition)
import Screeps.FFI.Types (Room)
import Screeps.FFI.Utils (Always, unsafeField)


foreign import data Source :: Type

instance spawnRoomObject :: RoomObject Source Always where
    pos :: Source -> RoomPosition
    pos obj = unsafeField "pos" obj

    room :: Source -> Always Room
    room obj = unsafeField "room" obj

-- | The remaining amount of energy.
energy :: Source -> Number
energy obj = unsafeField "energy" obj

-- | The total amount of energy in the source.
energyCapacity :: Source -> Number
energyCapacity obj = unsafeField "energyCapacity" obj

-- | A unique object identificator. You can use `Game.getObjectById` method to
-- | retrieve an object instance by its `id`.
id :: Source -> Number
id obj = unsafeField "id" obj

-- | The remaining time after which the source will be refilled.
ticksToRegeneration :: Source -> Number
ticksToRegeneration obj = unsafeField "ticksToRegeneration" obj
