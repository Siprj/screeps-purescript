module Screeps.FFI.Utils where

import Control.Monad.Eff(kind Effect, Eff)


foreign import data NullOrUndefined :: Type -> Type

foreign import unsafeField :: forall obj val. String -> obj -> val

foreign import runThisEffFn0 :: forall eff this a. String -> this -> Eff eff a
foreign import runThisEffFn1
    :: forall eff this a b
    . String
    -> this
    -> a
    -> Eff eff b
