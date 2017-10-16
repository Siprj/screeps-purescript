module Screeps.FFI.Structure where

import Control.Monad.Eff (Eff, kind Effect)
import Screeps.FFI.Constants (ReturnCode, StructureType)
import Screeps.FFI.RoomObject (class RoomObject)
import Screeps.FFI.Types (Screeps)


class (RoomObject s a) <= Structure s a | s -> a where
    -- | The current amount of hit points of the structure.
    hits :: s -> Number

    -- | The total amount of hit points of the structure.
    hitsMax :: s -> Number

    -- | A unique object identificator. You can use Game.getObjectById method to
    -- | retrieve an object instance by its id.
    id :: s -> String

    -- | One of the STRUCTURE_* (structure) constants.
    structureType :: s -> StructureType

    -- | Destroy this structure immediately.
    -- |
    -- | Returns:
    -- |    * OK - The operation has been scheduled successfully.
    -- |    * ERR_NOT_OWNER - You are not the owner of this structure.
    -- |    * ERR_BUSY - Hostile creeps are in the room.
    destroy :: forall eff. s -> Eff (screeps :: Screeps | eff) ReturnCode

    -- | Check whether this structure can be used. If room controller level is
    -- | insufficient, then this method will return false, and the structure
    -- | will be highlighted with red in the game.
    -- |
    -- | NOTE: This function has medium CPU cost!!!
    -- |
    -- | Returns:
    -- |     * A boolean value.
    isActive :: forall eff. s -> Eff (screeps :: Screeps | eff) Boolean

    -- | Toggle auto notification when the structure is under attack. The
    -- | notification will be sent to your account email. Turned on by default.
    -- |
    -- | Returns:
    -- |    * OK - The operation has been scheduled successfully.
    -- |    * ERR_NOT_OWNER - You are not the owner of this structure.
    -- |    * ERR_INVALID_ARGS - Argument is not a boolean value.
    notifyWhenAttacked
        :: forall eff. Boolean -> s -> Eff (screeps :: Screeps | eff) ReturnCode


-- DEFAULT IMPLEMENTSTION
-- hits :: s -> Number
-- hits obj = unsafeField "hits" obj
--
-- hitsMax :: s -> Number
-- hitsMax obj = unsafeField "hitsMax" obj
--
-- id :: s -> String
-- id obj = unsafeField "id" obj
--
-- structureType :: s -> StructureType
-- structureType obj = unsafeField "structureType" obj
--
-- destroy :: forall eff. s -> Eff (screeps :: Screeps | eff) ReturnCode
-- destroy obj = runThisEffFn0 "destroy" obj
--
-- isActive :: forall eff. s -> Eff (screeps :: Screeps | eff) Boolean
-- isActive obj = runThisEffFn0 "isActive" obj
--
-- notifyWhenAttacked
--     :: forall eff. Boolean -> s -> Eff (screeps :: Screeps | eff) ReturnCode
-- notifyWhenAttacked obj = runThisEffFn1 "notifyWhenAttacked" obj
