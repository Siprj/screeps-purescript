module Screeps.FFI.OwnedStructure where

import Screeps.FFI.Structure (class Structure)
import Screeps.FFI.Types (Owner)


class (Structure s a) <= OwnedStructure s a | s -> a where
    -- | Whether this is your own structure.
    my :: s -> Boolean

    -- | An object with the structure’s owner info containing the following properties
    owner :: s -> Owner

-- DEFAULT IMPLEMENTSTION
-- instance spawnOwnedStructure :: OwnedStructure Spawn Always where
--     my :: Spawn -> Boolean
--     my obj = unsafeField "my" obj
--
--     owner :: Spawn -> Owner
--     owner obj = unsafeField "owner" obj
