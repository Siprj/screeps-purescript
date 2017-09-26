module Screeps.FFI.Creep where

import Control.Monad.Eff (Eff, kind Effect)
import Data.StrMap (StrMap)

import Screeps.FFI.Constants
    ( BodyPartConstant
    , DirectionConstant
    , ResourceConstant
    )
import Screeps.FFI.RoomObject (class RoomObject)
import Screeps.FFI.RoomPosition (RoomPosition)
import Screeps.FFI.Types
    ( class Structure2
    , Controller
    , Room
    , ConstructionSite
    , Mineral
    , Path
    , Screeps
    , Source
    )
import Screeps.FFI.Utils (NullOrUndefined, unsafeField, runThisEffFn1)


type BodyPart =
    { boost :: NullOrUndefined ResourceConstant
    -- ^ If the body part is boosted, this property specifies the mineral type
    -- which is used for boosting. One of the RESOURCE_* constants.
    , type :: BodyPartConstant
    , hits :: Number -- ^ The remaining amount of hit points of this body part.
    }

type Owner =
    { username :: String -- ^ The name of the owner user.
    }

foreign import data Creep :: Type

instance creepRoomObject :: RoomObject Creep where
    pos :: Creep -> RoomPosition
    pos obj = unsafeField "pos" obj

    room :: Creep -> Room
    room obj = unsafeField "obj" obj

body :: Creep -> Array BodyPart
body obj = unsafeField "body" obj

-- TODO: StrMap is not probably the best container type possible...
carry :: Creep -> StrMap ResourceConstant
carry obj = unsafeField "carry" obj

carryCapacity :: Creep -> Number
carryCapacity obj = unsafeField "carryCapacity" obj

-- | The movement fatigue indicator. If it is greater than zero, the creep
-- | cannot move.
fatigue :: Creep -> Number
fatigue obj = unsafeField "fatigue" obj

-- | The current amount of hit points of the creep.
hits :: Creep -> Number
hits obj = unsafeField "hits" obj

-- | The maximum amount of hit points of the creep.
hitsMax :: Creep -> Number
hitsMax obj = unsafeField "fatigue" obj

-- TODO: Fix comment after getObjectById is implemented; e.i. replace
-- with it's real name getObjectById.

-- | A unique object identificator. You can use Game.getObjectById method to
-- | retrieve an object instance by its id.
id :: Creep -> String
id obj = unsafeField "id" obj

-- TODO: memry management

-- | Whether it is your creep or foe.
my :: Creep -> Boolean
my obj = unsafeField "my" obj

-- | Creep’s name. You can choose the name while creating a new creep, and it
-- | cannot be changed later. This name is a hash key to access the creep via
-- | the `creeps` object.
name :: Creep -> String
name obj = unsafeField "name" obj

-- | An object with the creep’s owner info.
owner :: Creep -> Owner
owner obj = unsafeField "owner" obj

-- | The text message that the creep was saying at the last tick.
saying :: Creep -> String
saying obj = unsafeField "saying" obj

-- | Whether this creep is still being spawned.
spawning :: Creep -> Boolean
spawning obj = unsafeField "spawning" obj

-- | he remaining amount of game ticks after which the creep will die.
ticksToLive :: Creep -> Number
ticksToLive obj = unsafeField "ticksToLive" obj

-- TODO: Get rid of class Structure2 in faver of class Structure.

-- | Attack another structure in a short-ranged attack. Requires the
-- | ATTACK body part. If the target is inside a rampart, then the rampart is
-- | attacked instead. The target has to be at adjacent square to the creep.
-- |
-- | Returns:
-- |   * OK - The operation has been scheduled successfully.
-- |   * ERR_NOT_OWNER - You are not the owner of this creep.
-- |   * ERR_BUSY - The creep is still being spawned.
-- |   * ERR_INVALID_TARGET - The target is not a valid attackable object.
-- |   * ERR_NOT_IN_RANGE - The target is too far away.
-- |   * ERR_NO_BODYPART - There are no ATTACK body parts in this creep’s body.
attackStructure
    :: forall eff s
    . Structure2 s
    => Creep
    -> s
    -> Eff (screeps :: Screeps | eff) Number
attackStructure this struct = runThisEffFn1 "attack" this struct

-- | Attack another creep  in a short-ranged attack. Requires the ATTACK body
-- | part. If the target is inside a rampart, then the rampart is attacked
-- | instead. The target has to be at adjacent square to the creep. If the
-- | target is a creep with ATTACK body parts and is not inside a rampart, it
-- | will automatically hit back at the attacker.
-- |
-- | First Creep is our creep, second is the target.
-- |
-- | Returns:
-- |   * OK - The operation has been scheduled successfully.
-- |   * ERR_NOT_OWNER - You are not the owner of this creep.
-- |   * ERR_BUSY - The creep is still being spawned.
-- |   * ERR_INVALID_TARGET - The target is not a valid attackable object.
-- |   * ERR_NOT_IN_RANGE - The target is too far away.
-- |   * ERR_NO_BODYPART - There are no ATTACK body parts in this creep’s body.
attackCreep
    :: forall eff
    . Creep
    -> Creep
    -> Eff (screeps :: Screeps | eff) Number
attackCreep this creep = runThisEffFn1 "attack" this creep

-- | Decreases the controller's downgrade or reservation timer for 300 ticks per
-- | every CLAIM body part. The controller under attack cannot be upgraded or
-- | attacked again for the next 1,000 ticks. The target has to be at adjacent
-- | square to the creep.
attackController
    :: forall eff. Creep -> Controller -> Eff (screeps :: Screeps | eff) Number
attackController this controller =
    runThisEffFn1 "attackController" this controller

-- | Build a structure at the target construction site using carried energy.
-- | Requires WORK and CARRY body parts. The target has to be within 3 squares
-- | range of the creep.
-- |
-- | Returns:
-- |   * OK - The operation has been scheduled successfully.
-- |   * ERR_NOT_OWNER - You are not the owner of this creep.
-- |   * ERR_BUSY - The creep is still being spawned.
-- |   * ERR_NOT_ENOUGH_RESOURCES - The creep does not have any carried energy.
-- |   * ERR_INVALID_TARGET - The target is not a valid construction site object
-- |     or the structure cannot be built here (probably because of a creep at
-- |     the same square).
-- |   * ERR_NOT_IN_RANGE - The target is too far away.
-- |   * ERR_NO_BODYPART - There are no WORK body parts in this creep’s body.
-- |   * ERR_RCL_NOT_ENOUGH - Room Controller Level insufficient.
build
    :: forall eff
    . Creep
    -> ConstructionSite
    -> Eff (screeps :: Screeps | eff) Number
build this constructionSite =
    runThisEffFn1 "build" this constructionSite

-- TODO: function cancelOrder
-- TODO: function claimController
-- TODO: function dismantle
-- TODO: function drop
-- TODO: function generateSafeMode
-- TODO: function getActiveBodyparts

-- | Harvest energy from the source. Requires the WORK body part. If the creep
-- | has an empty CARRY body part, the harvested resource is put into it;
-- | otherwise it is dropped on the ground. The target has to be at an adjacent
-- | square to the creep.
-- |
-- | Returns:
-- |   * OK - The operation has been scheduled successfully.
-- |   * ERR_NOT_OWNER - You are not the owner of this creep, or the room
-- |     controller is owned or reserved by another player.
-- |   * ERR_BUSY - The creep is still being spawned.
-- |   * ERR_NOT_FOUND - Extractor not found. You must build an extractor
-- |     structure to harvest minerals. Learn more
-- |   * ERR_NOT_ENOUGH_RESOURCES - The target source does not contain any
-- |     harvestable energy.
-- |   * ERR_INVALID_TARGET - The target is not a valid source object.
-- |   * ERR_NOT_IN_RANGE - The target is too far away.
-- |   * ERR_NO_BODYPART - There are no WORK body parts in this creep’s body.
harvestSource
    :: forall eff
    . Creep
    -> Source
    -> Eff (screeps :: Screeps | eff) Number
harvestSource this source = runThisEffFn1 "harvest" this source

-- | Harvest  minerals from the mineral deposit. Requires the WORK body part. If
-- | the creep has an empty CARRY body part, the harvested resource is put into
-- | it; otherwise it is dropped on the ground. The target has to be at an
-- | adjacent square to the creep.
-- |
-- | Returns:
-- |   * OK - The operation has been scheduled successfully.
-- |   * ERR_NOT_OWNER - You are not the owner of this creep, or the room
-- |     controller is owned or reserved by another player.
-- |   * ERR_BUSY - The creep is still being spawned.
-- |   * ERR_NOT_FOUND - Extractor not found. You must build an extractor
-- |     structure to harvest minerals. Learn more
-- |   * ERR_NOT_ENOUGH_RESOURCES - The target source does not contain any
-- |     harvestable energy.
-- |   * ERR_INVALID_TARGET - The target is not a valid source object.
-- |   * ERR_NOT_IN_RANGE - The target is too far away.
-- |   * ERR_NO_BODYPART - There are no WORK body parts in this creep’s body.
harvestMineral
    :: forall eff
    . Creep
    -> Mineral
    -> Eff (screeps :: Screeps | eff) Number
harvestMineral this mineral = runThisEffFn1 "harvest" this mineral

-- TODO: function heal

-- | Move the creep one square in the specified direction. Requires the MOVE
-- | body part.
-- |
-- | Returns:
-- |   * OK - The operation has been scheduled successfully.
-- |   * ERR_NOT_OWNER - You are not the owner of this creep.
-- |   * ERR_BUSY - The creep is still being spawned.
-- |   * ERR_INVALID_ARGS - The provided direction is incorrect.
-- |   * ERR_TIRED - The fatigue indicator of the creep is non-zero.
-- |   * ERR_NO_BODYPART - There are no MOVE body parts in this creep’s body.
move ::
    forall eff
    . Creep
    -> DirectionConstant
    -> Eff (screeps :: Screeps | eff) Number
move this direction = runThisEffFn1 "move" this direction

-- | Move the creep using the specified predefined path. Requires the MOVE body
-- | part.
-- |
-- | Returns:
-- |  * OK - The operation has been scheduled successfully.
-- |  * ERR_NOT_OWNER - You are not the owner of this creep.
-- |  * ERR_BUSY - The creep is still being spawned.
-- |  * ERR_NOT_FOUND - The specified path doesn't match the creep's location.
-- |  * ERR_INVALID_ARGS - Path is not a valid path array.
-- |  * ERR_TIRED - The fatigue indicator of the creep is non-zero.
-- |  * ERR_NO_BODYPART - There are no MOVE body parts in this creep’s body.
moveByPath
    :: forall eff
    . Creep
    -> Path
    -> Eff (screeps :: Screeps | eff) Number
moveByPath this path = runThisEffFn1 "moveByPath" this path

-- | Upgrade your controller to the next level using carried energy. Upgrading
-- | controllers raises your Global Control Level in parallel. Requires WORK and
-- | CARRY body parts. The target has to be within 3 squares range of the creep.
-- |
-- | A fully upgraded level 8 controller can't be upgraded over 15 energy units
-- | per tick regardless of creeps abilities. The cumulative effect of all the
-- | creeps performing upgradeController in the current tick is taken into
-- | account. This limit can be increased by using ghodium mineral boost.
-- |
-- | Upgrading the controller raises its ticksToDowngrade timer by 100. The
-- | timer must be full in order for controller to be levelled up.
-- |
-- | Returns:
-- |   * OK - The operation has been scheduled successfully.
-- |   * ERR_NOT_OWNER - You are not the owner of this creep or the target
-- |     controller.
-- |   * ERR_BUSY - The creep is still being spawned.
-- |   * ERR_NOT_ENOUGH_RESOURCES - The creep does not have any carried energy.
-- |   * ERR_INVALID_TARGET - The target is not a valid controller object.
-- |   * ERR_NOT_IN_RANGE - The target is too far away.
-- |   * ERR_NO_BODYPART - There are no WORK body parts in this creep’s body.
upgradeController
    :: forall eff
    . Creep
    -> Controller
    -> Eff (screeps :: Screeps | eff) Number
upgradeController this controller =
    runThisEffFn1 "upgradeController" this controller
