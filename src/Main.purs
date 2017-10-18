module Main where

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Data.Generic (class Generic, gShow)
import Data.Maybe (Maybe(..), maybe)
import Data.StrMap (keys)
import Prelude (class Show, Unit, bind, discard, map, pure, show, unit, ($), (+), (<<<), (<>), (>>=))
import Screeps.FFI.Game (creeps, getGame)
import Screeps.FFI.Memory (getMemory, setMemorySegment, getMemorySegment)
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

main :: forall e. Eff (screeps :: Screeps, console :: CONSOLE | e) Unit
main = getMem >>= work
  where
    work v = do
        let v2 = maybe def modifyVal v
        log $ showVal v2
        setMemorySegment getMemory "pokus" v2
