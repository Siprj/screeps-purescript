module Screeps.FFI.Structure.Spawn where

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Prelude (($))
import Screeps.FFI.Constants (BodyPartConstant, ReturnCode, StructureType)
import Screeps.FFI.Creep (Creep)
import Screeps.FFI.OwnedStructure (class OwnedStructure)
import Screeps.FFI.RoomObject (class RoomObject)
import Screeps.FFI.RoomPosition (RoomPosition)
import Screeps.FFI.Structure (class Structure)
import Screeps.FFI.Types (Owner, Room, Screeps)
import Screeps.FFI.Utils (Always, JsObject, NullOrUndefined, runThisEffFn0, runThisEffFn1, runThisEffFn2, runThisEffFn3, selectMaybes, unsafeField)


foreign import data Spawn :: Type

instance spawnRoomObject :: RoomObject Spawn Always where
    pos :: Spawn -> RoomPosition
    pos obj = unsafeField "pos" obj

    room :: Spawn -> Always Room
    room obj = unsafeField "room" obj

instance spawnStructure :: Structure Spawn Always where
    hits :: Spawn -> Number
    hits obj = unsafeField "hits" obj

    hitsMax :: Spawn -> Number
    hitsMax obj = unsafeField "hitsMax" obj

    id :: Spawn -> String
    id obj = unsafeField "id" obj

    structureType :: Spawn -> StructureType
    structureType obj = unsafeField "structureType" obj

    destroy :: forall eff. Spawn -> Eff (screeps :: Screeps | eff) ReturnCode
    destroy obj = runThisEffFn0 "destroy" obj

    isActive :: forall eff. Spawn -> Eff (screeps :: Screeps | eff) Boolean
    isActive obj = runThisEffFn0 "isActive" obj

    notifyWhenAttacked
        :: forall eff
        . Spawn
        -> Boolean
        -> Eff (screeps :: Screeps | eff) ReturnCode
    notifyWhenAttacked obj a = runThisEffFn1 "notifyWhenAttacked" obj a

instance spawnOwnedStructure :: OwnedStructure Spawn Always where
    my :: Spawn -> Boolean
    my obj = unsafeField "my" obj

    owner :: Spawn -> Owner
    owner obj = unsafeField "owner" obj

-- | The amount of energy containing in the spawn.
energy :: Spawn -> Number
energy obj = unsafeField "energy" obj

-- | The total amount of energy the spawn can contain.
energyCapacity :: Spawn -> Number
energyCapacity obj = unsafeField "energyCapacity" obj

-- TODO: Memory

-- | Spawn’s name. You choose the name upon creating a new spawn, and it cannot
-- | be changed later. This name is a hash key to access the spawn via the
-- | `Game.spawns` object.
name :: Spawn -> String
name obj = unsafeField "name" obj

type CreepInfo =
    { name :: String -- ^ The name of the creep.
    , needTime :: Number -- ^ Time needed in total to complete the spawning.
    , remainingTime :: Number -- ^ Remaining time to go.
    }


-- | The total amount of energy the spawn can contain.
spawning :: Spawn -> NullOrUndefined CreepInfo
spawning obj = unsafeField "spawning" obj

-- | Start the creep spawning process. The required energy amount can be
-- | withdrawn from all spawns and extensions in the room.
-- |
-- | String parameter is the new creeps name.
-- |
-- | Returns:
-- |     * OK - The operation has been scheduled successfully.
-- |     * ERR_NOT_OWNER - You are not the owner of this spawn.
-- |     * ERR_NAME_EXISTS - There is a creep with the same name already.
-- |     * ERR_BUSY - The spawn is already in process of spawning another creep.
-- |     * ERR_NOT_ENOUGH_ENERGY - The spawn and its extensions contain not
-- |       enough energy to create a creep with the given body.
-- |     * ERR_INVALID_ARGS - Body is not properly described or name was not
-- |       provided.
-- |     * ERR_RCL_NOT_ENOUGH - Your Room Controller level is insufficient to
-- |       use this spawn.
spawnCreep
    :: forall eff
    . Spawn
    -> Array BodyPartConstant
    -> String
    -> Eff (screeps :: Screeps | eff) ReturnCode
spawnCreep obj a b = runThisEffFn2 "spawnCreep" obj a b

type SpawnOpt a =
    { memory :: Maybe a
    -- ^ Memory of the new creep. If provided, it will be immediately stored
    -- into Memory.creeps[name].
    , energyStructures :: Maybe String
    -- ^ Array of spawns/extensions from which to draw energy for the spawning
    -- process. Structures will be used according to the array order.
    , dryRun :: Maybe Boolean
    -- ^ If dryRun is true, the operation will only check if it is possible to
    -- create a creep.
    }

-- | Start the creep spawning process. The required energy amount can be
-- | withdrawn from all spawns and extensions in the room.
-- |
-- | String parameter is the new creeps name.
-- |
-- | Returns:
-- |     * OK - The operation has been scheduled successfully.
-- |     * ERR_NOT_OWNER - You are not the owner of this spawn.
-- |     * ERR_NAME_EXISTS - There is a creep with the same name already.
-- |     * ERR_BUSY - The spawn is already in process of spawning another creep.
-- |     * ERR_NOT_ENOUGH_ENERGY - The spawn and its extensions contain not
-- |       enough energy to create a creep with the given body.
-- |     * ERR_INVALID_ARGS - Body is not properly described or name was not
-- |       provided.
-- |     * ERR_RCL_NOT_ENOUGH - Your Room Controller level is insufficient to
-- |       use this spawn.
spawnCreepOpt
    :: forall eff a
    . Spawn
    -> Array BodyPartConstant
    -> String
    -> SpawnOpt a
    -> Eff (screeps :: Screeps | eff) ReturnCode
spawnCreepOpt obj a b c = spawnCreepOpt' obj a b $ selectMaybes c

spawnCreepOpt'
    :: forall eff
    . Spawn
    -> Array BodyPartConstant
    -> String
    -> JsObject
    -> Eff (screeps :: Screeps | eff) ReturnCode
spawnCreepOpt' obj a b c = runThisEffFn3 "spawnCreep" obj a b c

-- | Kill the creep and drop up to 100% of resources spent on its spawning and
-- | boosting depending on remaining life time. The target should be at
-- | adjacent square.
-- |
-- | Retruns:
-- |     * OK - The operation has been scheduled successfully.
-- |     * ERR_NOT_OWNER - You are not the owner of this spawn or the target
-- |       creep.
-- |     * ERR_INVALID_TARGET - The specified target object is not a creep.
-- |     * ERR_NOT_IN_RANGE - The target creep is too far away.
recycleCreep
    :: forall eff
    . Spawn
    -> Creep
    -> Eff (screeps :: Screeps | eff) ReturnCode
recycleCreep obj a = runThisEffFn1 "recycleCreep" obj a

-- | Increase the remaining time to live of the target creep. The target should
-- | be at adjacent square. The spawn should not be busy with the spawning
-- | process. Each execution increases the creep's timer by amount of ticks
-- | according to this formula:
-- |
-- | ```
-- |    floor(600/body_size)
-- | ```
-- |
-- | Energy required for each execution is determined using this formula:
-- | ```
-- |    ceil(creep_cost/2.5/body_size)
-- | ```
-- |
-- | Renewing a creep removes all of its boosts.
-- |
-- | Returns:
-- |     * OK The operation has been scheduled successfully.
-- |     * ERR_NOT_OWNER - You are not the owner of the spawn, or the creep.
-- |     * ERR_BUSY - The spawn is spawning another creep.
-- |     * ERR_NOT_ENOUGH_ENERGY - The spawn does not have enough energy.
-- |     * ERR_INVALID_TARGET - The specified target object is not a creep.
-- |     * ERR_FULL - The target creep's time to live timer is full.
-- |     * ERR_NOT_IN_RANGE - The target creep is too far away.
renewCreep
    :: forall eff
    . Spawn
    -> Creep
    -> Eff (screeps :: Screeps | eff) ReturnCode
renewCreep obj a = runThisEffFn1 "renewCreep" obj a
