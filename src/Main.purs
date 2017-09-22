module Main where

import Prelude((>>=), (<<<), ($), Unit, show, map, pure, unit)

import Data.StrMap (keys)
import Control.Monad.Eff(Eff)
import Control.Monad.Eff.Console(CONSOLE, log)

import Screeps.FFI.Game(creeps, getGame, logCreeps)
import Screeps.FFI.Types(Screeps)

main :: forall e. Eff (screeps :: Screeps, console :: CONSOLE | e) Unit
main = (map (keys <<< creeps) getGame) >>= (log <<< show <<< map show)
