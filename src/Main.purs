module Main where

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Control.Monad.Eff.Unsafe (unsafePerformEff)
import Data.Array (head)
import Data.Foldable (traverse_)
import Data.Generic (class Generic, gShow)
import Data.Maybe (Maybe(..), maybe)
import Data.StrMap (StrMap, filter, keys, size, values)
import Prelude (class Show, Unit(..), bind, discard, map, pure, show, unit, void, when, ($), (+), (<<<), (<>), (==), (>), (>>=))
import Screeps.FFI.Constants (carry, move, work)
import Screeps.FFI.Creep (Creep)
import Screeps.FFI.Game (Game, creeps, getGame, spawns, time)
import Screeps.FFI.Memory (getMemory, setMemorySegment, getMemorySegment)
import Screeps.FFI.Structure.Spawn (SpawnOpt, spawnCreep, spawnCreepOpt)
import Screeps.FFI.Types (Screeps)
import Screeps.FFI.Utils (nullOrUndefinedToMaybe)


type Val =
    { num :: Int
    }

def :: Val
def = {num: 0}

modifyVal :: Val -> Val
modifyVal {num: x} = {num: x + 1}

getMem :: forall e. Eff (screeps :: Screeps | e) (Maybe Val)
getMem = map nullOrUndefinedToMaybe $ getMemorySegment getMemory "pokus"

showVal :: Val -> String
showVal v = "pokus: " <> show v.num

creepGetMemory :: forall eff val
    . Creep
    -> String
    -> Eff (screeps :: Screeps | eff) val
creepGetMemory creep field = getMemorySegment creep field

filterHarvesters :: String -> StrMap Creep -> StrMap Creep
filterHarvesters name creeps' = filter checkHarvester creeps'
  where
    checkHarvester :: Creep -> Boolean
    checkHarvester a = unsafePerformEff $ do
        v <- creepGetMemory a "role"
        pure $ maybe false ((==) name) $ nullOrUndefinedToMaybe v

type HarvesterMemory = {
    role :: String
}

main :: forall e. Eff (screeps :: Screeps, console :: CONSOLE | e) Unit
main = do
    g <- getGame
    log "trying to create new hv"
    when (shouldSpawnHarvester g) $ maybe (pure unit) (\s -> void $ spawnCreepOpt s body ("hv" <> show (time g)) harvOpts) $ head $ values $ spawns g
    log "trying to create new up"
    when (shouldSpawnUpgrader g) $ maybe (pure unit) (\s -> void $ spawnCreepOpt s body ("up" <> show (time g)) upgrOpts) $ head $ values $ spawns g
  where
    shouldSpawnHarvester :: Game -> Boolean
    shouldSpawnHarvester g = 2 > (size $ filterHarvesters "harvester" $ creeps g)

    shouldSpawnUpgrader :: Game -> Boolean
    shouldSpawnUpgrader g = 2 > (size $ filterHarvesters "harvester" $ creeps g)

    body = [work, carry, move, move]

    harvOpts :: SpawnOpt HarvesterMemory
    harvOpts =
        { memory: Just {role: "harvester"}
        , energyStructures: Nothing
        , dryRun: Nothing
        }

    upgrOpts :: SpawnOpt HarvesterMemory
    upgrOpts =
        { memory: Just {role: "upgrader"}
        , energyStructures: Nothing
        , dryRun: Nothing
        }
