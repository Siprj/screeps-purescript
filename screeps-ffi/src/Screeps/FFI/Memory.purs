module Screeps.FFI.Memory where

import Control.Monad.Eff (kind Effect, Eff)
import Prelude (Unit)

import Screeps.FFI.Types (Screeps)


foreign import data Memory :: Type

foreign import getMemory :: Memory

foreign import getMemorySegmentPrime
    :: forall eff val this. this -> String -> Eff (screeps :: Screeps | eff) val

foreign import setMemorySegmentPrime
    :: forall eff val this
    . this
    -> String
    -> val
    -> Eff (screeps :: Screeps | eff) Unit

class HasMemory a where
    getMemorySegment
        :: forall eff val. a -> String -> Eff (screeps :: Screeps | eff) val
    setMemorySegment
        :: forall eff val
        . a
        -> String
        -> val
        -> Eff (screeps :: Screeps | eff) Unit

instance memory :: HasMemory Memory where
    getMemorySegment
        :: forall eff val
        . Memory
        -> String
        -> Eff (screeps :: Screeps | eff) val
    getMemorySegment = getMemorySegmentPrime

    setMemorySegment
        :: forall eff val
        . Memory
        -> String
        -> val
        -> Eff (screeps :: Screeps | eff) Unit
    setMemorySegment = setMemorySegmentPrime
