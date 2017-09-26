module Screeps.FFI.Types where

import Control.Monad.Eff(kind Effect)


-- | Effect for all statefull screeps commands
foreign import data Screeps :: Effect

foreign import data ConstructionSite :: Type
foreign import data Flags :: Type
foreign import data WorldMap :: Type
foreign import data Market :: Type
foreign import data Resources :: Type
foreign import data Room :: Type
foreign import data Spawn :: Type
foreign import data Structure :: Type
foreign import data Controller :: Type
foreign import data Source :: Type
foreign import data Mineral :: Type
foreign import data Path :: Type

class Structure2 s where
    dummy :: s
