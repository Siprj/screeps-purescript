module Screeps.FFI.Game where

import Control.Monad.Eff (Eff, kind Effect)
import Data.StrMap (StrMap)
import Prelude (Unit)
import Screeps.FFI.Creep (Creep)
import Screeps.FFI.Structure.Spawn (Spawn)
import Screeps.FFI.Types (Screeps, ConstructionSite, Flags, WorldMap, Market, Resources, Room, GenericStructure)
import Screeps.FFI.Utils (unsafeField)


foreign import data Game :: Type

type Gcl =
    { level :: Number -- ^ The current level.
    , progress :: Number -- ^ The current progress to the next level.
    , progressTotal :: Number -- ^ The progress required to reach the next level.
    }

type Cpu =
    { limit :: Number -- ^ Your assigned CPU limit for the current shard.
    , tickLimit :: Number
    -- ^ An amount of available CPU time at the current game tick.
    -- Usually it is higher than limit.
    , bucket :: Number -- ^ An amount of unused CPU accumulated in your bucket.
    , shardLimits :: StrMap Number
    -- ^ An object with limits for each shard with shard names as keys. You can
    -- use `setShardLimits` method to re-assign them.
    }

type Shard =
    { name :: String -- ^ The name of the shard.
    , type :: String -- ^ Currently always equals to "normal".
    , ptr :: Boolean -- ^ Whether this shard belongs to the PTR.
    }

foreign import getGame
    :: forall eff. Eff (screeps :: Screeps | eff) Game

-- | A hash containing all your construction sites with their id as hash keys.
constructionSites :: Game -> StrMap ConstructionSite
constructionSites obj = unsafeField "constructionSites" obj

-- | An object containing information about your CPU usage.
cpu :: Game -> Cpu
cpu obj = unsafeField "cpu" obj

creeps :: Game -> StrMap Creep
creeps obj = unsafeField "creeps" obj

flags :: Game -> StrMap Flags
flags obj = unsafeField "flags" obj

gcl :: Game -> Gcl
gcl obj = unsafeField "gcl" obj

-- | A global object representing world map.
map :: Game -> WorldMap
map obj = unsafeField "map" obj

market :: Game -> Market
market obj = unsafeField "market" obj

-- | An object with your global resources that are bound to the account, like
-- | subscription tokens. Each object key is a resource constant, values are
-- | resources amounts.
resources :: Game -> Resources
resources obj = unsafeField "resources" obj

rooms :: Game -> StrMap Room
rooms obj = unsafeField "rooms" obj

shard :: Game -> Shard
shard obj = unsafeField "shard" obj

spawns :: Game -> StrMap Spawn
spawns obj = unsafeField "spawns" obj

structures :: Game -> StrMap GenericStructure
structures obj = unsafeField "structures" obj

time :: Game -> Number
time obj = unsafeField "time" obj

foreign import getUsedCpu :: forall eff. Eff (screeps :: Screeps | eff) Number

-- | Allocate CPU limits to different shards. Total amount of CPU should remain
-- | equal to Cpu.shardLimits. This method can be used only once per 12 hours.
-- |
-- | Parameter is StrMap with keys as shard names and values as new cpu
-- | limits pre shard.
-- |
-- | Returns:
-- |   * OK - The operation has been scheduled successfully.
-- |   * ERR_BUSY - 12-hours cooldown period is not over yet.
-- |   * ERR_INVALID_ARGS - The argument is not a valid shard limits object.
foreign import setShardLimits
    :: forall eff. StrMap Int -> Eff (screeps :: Screeps | eff) Number

-- TODO: getObjectById

-- | Send a custom message at your profile email. This way, you can set up
-- | notifications to yourself on any occasion within the game. You can schedule
-- | up to 20 notifications during one game tick. Not available in the
-- | Simulation Room. Equivalent to `notifyLater str 0`.
-- |
-- | Message can contain up to 1000 characters.
foreign import notify
    :: forall eff. String -> Eff (screeps :: Screeps | eff) Unit

-- | Same as `notify` but additionl parametar.
-- |
-- | Second parameter - if set to 0, the notification will be scheduled
-- | immediately. Otherwise, it will be grouped with other notifications and
-- | mailed out later using the specified time in minutes.
foreign import notifyLater
    :: forall eff. String -> Int -> Eff (screeps :: Screeps | eff) Unit
