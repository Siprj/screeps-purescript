module Screeps.FFI.Types where

import Control.Monad.Eff(kind Effect)


-- | Effect for all statefull screeps commands
foreign import data Screeps :: Effect

foreign import data ConstructionSite :: Type
foreign import data Creep :: Type
foreign import data Flags :: Type
foreign import data WorldMap :: Type
foreign import data Market :: Type
foreign import data Resources :: Type
foreign import data Room :: Type
foreign import data Spawn :: Type
foreign import data Structure :: Type
