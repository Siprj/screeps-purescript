module Main where

import Prelude ((>>=), ($), Unit, show)

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

import Screeps.Game (creeps)
import Screeps

main :: forall e. Eff (console :: CONSOLE, tick :: TICK | e) Unit
main = creeps >>= (\v -> log $ show v)
