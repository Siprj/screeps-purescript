module Screeps.FFI.OwnedStructure where

import Screeps.FFI.Structure (class Structure)


type Owner =
    { username :: String
    }

class (Structure s a) <= OwnedStructure s a | s -> a where
    -- | Whether this is your own structure.
    my :: s -> Boolean

    -- | An object with the structure’s owner info containing the following properties
    owner :: s -> Owner

-- DEFAULT IMPLEMENTSTION
-- my :: s -> Boolean
-- my obj = unsafeField "my" obj
--
-- owner :: s -> Owner
-- owner obj = unsafeField "owner" obj
