module Screeps.FFI.Memory where

import Control.Monad.Eff (kind Effect, Eff)
import Prelude (Unit)

import Screeps.FFI.Types (Screeps)


foreign import getMemory :: forall a. a

foreign import getMemorySegment
    :: forall eff val this. this -> String -> Eff (screeps :: Screeps | eff) val

foreign import setMemorySegment
    :: forall eff val this
    . this
    -> String
    -> val
    -> Eff (screeps :: Screeps | eff) Unit

foreign import deleteMemorySegment
    :: forall eff val this
    . this
    -> String
    -> Eff (screeps :: Screeps | eff) Unit
