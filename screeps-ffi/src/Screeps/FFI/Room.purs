module Screeps.FFI.Room where

import Control.Monad.Eff (Eff)
import Data.Either (Either(..))
import Data.Function.Uncurried (Fn2)
import Data.Maybe (Maybe)
import Prelude (bind, pure, ($), (<))
import Screeps.FFI.Constants (ColorConstant, ExitDirection(ExitDirection), FindConstant, LookConstant, ReturnCode(ReturnCode), StructureType)
import Screeps.FFI.RoomPosition (RoomPosition)
import Screeps.FFI.Types (Controller, CostMatrix, LookAtAreaArrayResult, LookAtAreaResult, LookAtResult, LookForAtAreaArrayResult, LookForAtAreaResult, LookForAtResult, Path, Room, Screeps, SerializedPath, Storage, Visual, X, Y)
import Screeps.FFI.Utils (NullOrUndefined, runThisEffFn1, runThisEffFn2, runThisEffFn3, runThisEffFn4, runThisEffFn5, selectMaybes, unsafeField)


-- | The Controller structure of this room, if present, otherwise undefined.
controller :: Room -> Controller
controller obj = unsafeField "controller" obj

-- | Total amount of energy available in all spawns and extensions in the room.
energyAvailable :: Room -> Number
energyAvailable obj = unsafeField "energyAvailable" obj

-- | Total amount of energyCapacity of all spawns and extensions in the room.
energyCapacityAvailablenumber :: Room -> Controller
energyCapacityAvailablenumber obj =
    unsafeField "energyCapacityAvailablenumber" obj

-- TODO: Memory

name :: Room -> Number
name obj = unsafeField "name" obj

-- | The Storage structure of this room, if present, otherwise undefined.
storage :: Room -> NullOrUndefined Storage
storage obj = unsafeField "storage" obj

-- | The Terminal structure of this room, if present, otherwise undefined.
terminal :: Room -> NullOrUndefined Storage
terminal obj = unsafeField "terminal" obj

-- | A RoomVisual object for this room. You can use this object to draw simple
-- | shapes (lines, circles, text labels) in the room.
visual :: Room -> Visual
visual obj = unsafeField "visual" obj

-- | Serialize a path array into a short string representation, which is
-- | suitable to store in memory.
foreign import serializePath :: Path -> SerializedPath

-- | Deserialize a short string path representation into an array form.
foreign import deserializePath :: SerializedPath -> Path

-- | Create new ConstructionSite at the specified location.
-- |
-- | Resturns:
-- |     * OK - The operation has been scheduled successfully.
-- |     * ERR_INVALID_TARGET - The structure cannot be placed at the specified
-- |       location.
-- |     * ERR_FULL - You have too many construction sites. The maximum number
-- |       of construction sites per player is 100.
-- |     * ERR_INVALID_ARGS - The location is incorrect.
-- |     * ERR_RCL_NOT_ENOUGH - Room Controller Level insufficient.
createConstructionSite
    :: forall eff val
    . Room
    -> X
    -> Y
    -> StructureType
    -> Eff (screeps :: Screeps | eff) ReturnCode
createConstructionSite obj x y struct =
    runThisEffFn3 "createConstructionSite" obj x y struct

-- | Create new ConstructionSite at the specified location.
-- |
-- | Resturns:
-- |     * OK - The operation has been scheduled successfully.
-- |     * ERR_INVALID_TARGET - The structure cannot be placed at the specified
-- |       location.
-- |     * ERR_FULL - You have too many construction sites. The maximum number
-- |       of construction sites per player is 100.
-- |     * ERR_INVALID_ARGS - The location is incorrect.
-- |     * ERR_RCL_NOT_ENOUGH - Room Controller Level insufficient.
createConstructionSitePos
    :: forall eff val
    . Room
    -> RoomPosition
    -> StructureType
    -> Eff (screeps :: Screeps | eff) ReturnCode
createConstructionSitePos obj pos struct =
    runThisEffFn2 "createConstructionSite" obj pos struct

-- | Create new Flag at the specified location.
-- |
-- | Returns:
-- |     * ERR_NAME_EXISTS - There is a flag with the same name already.
-- |     * ERR_INVALID_ARGS - The location or the color constant is incorrect.
createFlag
    :: forall eff val
    . Room
    -> X
    -> Y
    -> String
    -> ColorConstant
    -> ColorConstant
    -> Eff (screeps :: Screeps | eff) ReturnCode
createFlag obj x y namr primColor secColor =
    runThisEffFn5 "createFlag" obj x y name primColor secColor

-- | Create new Flag at the specified location.
-- |
-- | Returns:
-- |     * ERR_NAME_EXISTS - There is a flag with the same name already.
-- |     * ERR_INVALID_ARGS - The location or the color constant is incorrect.
createFlagPos
    :: forall eff
    . Room
    -> RoomPosition
    -> String
    -> ColorConstant
    -> ColorConstant
    -> Eff (screeps :: Screeps | eff) ReturnCode
createFlagPos obj pos namr primColor secColor =
    runThisEffFn4 "createFlag" obj pos name primColor secColor

find
    :: forall eff a
    . Room
    -> FindConstant
    -> Eff (screeps :: Screeps | eff) (Array a)
find obj type' = runThisEffFn1 "find" obj type'

-- | Find the exit direction en route to another room. Please note that this
-- | method is not required for inter-room movement, you can simply pass the
-- | target in another room into Creep.moveTo method.
-- |
-- | Returns:
-- |    * Exit direction
-- |    * ERR_NO_PATH - Path can not be found.
-- |    * ERR_INVALID_ARGS - The location is incorrect.
findExitTo
    :: forall eff
    . Room
    -> Room
    -> Eff (screeps :: Screeps | eff) (Either ReturnCode ExitDirection)
findExitTo obj to = do
    (ReturnCode ret) <- runThisEffFn1 "findExitTo" obj to
    pure $ if ret < 0
        then Left (ReturnCode ret)
        else Right (ExitDirection ret)

-- | Find an optimal path inside the room between fromPos and toPos using
-- | `Jump Point Search` algorithm.
findPath
    :: forall eff
    . Room
    -> RoomPosition
    -> RoomPosition
    -> Eff (screeps :: Screeps | eff) Path
findPath obj from to = runThisEffFn2 "findPath" obj from to

type FindPathOpt =
    { ignoreCreeps :: Maybe Boolean
    -- ^ Treat squares with creeps as walkable. Can be useful with too many
    -- moving creeps around or in some other cases. The default value is false.
    , ignoreDestructibleStructures :: Maybe Boolean
    -- ^ Treat squares with destructible structures (constructed walls,
    -- ramparts, spawns, extensions) as walkable. The default value is false.
    , ignoreRoads :: Maybe Boolean
    -- ^ Ignore road structures. Enabling this option can speed up the search.
    -- The default value is false. This is only used when the new `PathFinder`
    -- is enabled.
    , costCallback :: Maybe (Fn2 String CostMatrix CostMatrix)
    -- ^ You can use this callback to modify a `CostMatrix` for any room during
    -- the search. The callback accepts two arguments, roomName and costMatrix.
    -- Use the costMatrix instance to make changes to the positions costs. If
    -- you return a new matrix from this callback, it will be used instead of
    -- the built-in cached one. This option is only used when the new
    -- `PathFinder` is enabled.
    , ignore :: Maybe (Array RoomPosition)
    -- ^ An array of the room's objects or `RoomPosition` objects which should
    -- be treated as walkable tiles during the search. This option cannot be
    -- used when the new `PathFinder` is enabled (use costCallback option
    -- instead).
    , avoid :: Maybe (Array RoomPosition)
    -- ^ An array of the room's objects or `RoomPosition` objects which should
    -- be treated as obstacles during the search. This option cannot be used
    -- when the new `PathFinder` is enabled (use costCallback option instead).
    , maxOps :: Maybe Int
    -- ^The maximum limit of possible pathfinding operations. You can limit CPU
    -- time used for the search based on ratio 1 op ~ 0.001 CPU. The default
    -- value is 2000.
    , heuristicWeight :: Maybe Number
    -- ^ Weight to apply to the heuristic in the A formula F = G + weight H.
    -- Use this option only if you understand the underlying A* algorithm
    -- mechanics! The default value is 1.2.
    , serialize :: Maybe Boolean
    -- ^ If true, the result path will be serialized using `Room.serializePath`.
    -- The default is false.
    , maxRooms :: Maybe Int
    -- ^ The maximum allowed rooms to search. The default (and maximum) is 16.
    -- This is only used when the new PathFinder is enabled.
    }

-- | Find an optimal path inside the room between fromPos and toPos using
-- | `Jump Point Search` algorithm.
findPathOpt
    :: forall eff
    . Room
    -> RoomPosition
    -> RoomPosition
    -> FindPathOpt
    -> Eff (screeps :: Screeps | eff) Path
findPathOpt obj from to opts =
    runThisEffFn3 "findPath" obj from to $ selectMaybes opts

-- | Creates a RoomPosition object at the specified location.
getPositionAt
    :: forall eff
    . Room
    -> X
    -> Y
    -> Eff (screeps :: Screeps | eff) RoomPosition
getPositionAt obj x y = runThisEffFn2 "getPositionAt" obj x y

-- | Get the list of objects at the specified room position.
lookAt
    :: forall eff
    . Room
    -> RoomPosition
    -> Eff (screeps :: Screeps | eff) LookAtResult
lookAt obj pos = runThisEffFn1 "lookAt" obj pos

-- | Get the list of objects at the specified room area.
lookAtArea
    :: forall eff
    . Room
    -> Y
    -- ^ The top Y boundary of the area.
    -> X
    -- ^ The left X boundary of the area.
    -> Y
    -- ^ The bottom Y boundary of the area.
    -> X
    -- ^ The right X boundary of the area.
    -> Eff (screeps :: Screeps | eff) LookAtAreaResult
lookAtArea obj top left bottom right =
    runThisEffFn4 "lookAt" obj top left bottom right

-- | Get the list of objects at the specified room area.
lookAtAreaArray
    :: forall eff
    . Room
    -> Y
    -- ^ The top Y boundary of the area.
    -> X
    -- ^ The left X boundary of the area.
    -> Y
    -- ^ The bottom Y boundary of the area.
    -> X
    -- ^ The right X boundary of the area.
    -> Eff (screeps :: Screeps | eff) LookAtAreaArrayResult
lookAtAreaArray obj top left bottom right =
    runThisEffFn5 "lookAt" obj top left bottom right true

-- | Get an object with the given type at the specified room position.
lookForAt
    :: forall eff
    . Room
    -> LookConstant
    -> RoomPosition
    -> Eff (screeps :: Screeps | eff) LookForAtResult
lookForAt obj lookType pos = runThisEffFn2 "lookForAt" obj lookType pos

-- | Get the list of objects with the given type at the specified room area.
lookForAtArea
    :: forall eff
    . Room
    -> LookConstant
    -> Y
    -- ^ The top Y boundary of the area.
    -> X
    -- ^ The left X boundary of the area.
    -> Y
    -- ^ The bottom Y boundary of the area.
    -> X
    -- ^ The right X boundary of the area.
    -> Eff (screeps :: Screeps | eff) LookForAtAreaResult
lookForAtArea obj lookType top left bottom right =
    runThisEffFn5 "lookForAtArea" obj lookType top left bottom right

-- | Get the list of objects with the given type at the specified room area.
lookForAtAreaArray
    :: forall eff
    . Room
    -> LookConstant
    -> Y
    -- ^ The top Y boundary of the area.
    -> X
    -- ^ The left X boundary of the area.
    -> Y
    -- ^ The bottom Y boundary of the area.
    -> X
    -- ^ The right X boundary of the area.
    -> Eff (screeps :: Screeps | eff) LookForAtAreaArrayResult
lookForAtAreaArray obj lookType top left bottom right =
    runThisEffFn5 "lookForAtArea" obj lookType top left bottom right
