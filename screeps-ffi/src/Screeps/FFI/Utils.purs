module Screeps.FFI.Utils where

import Control.Monad.Eff (kind Effect, Eff)
import Data.Maybe (Maybe, fromJust, isJust)
import Partial.Unsafe (unsafePartial)
import Prelude (($))


foreign import data NullOrUndefined :: Type -> Type
foreign import data Always :: Type -> Type

foreign import unsafeField :: forall obj val. String -> obj -> val

foreign import runThisEffFn0 :: forall eff this a. String -> this -> Eff eff a
foreign import runThisEffFn1
    :: forall eff this a r
    . String
    -> this
    -> a
    -> Eff eff r

foreign import runThisEffFn2
    :: forall eff this a b r
    . String
    -> this
    -> a
    -> b
    -> Eff eff r

foreign import runThisEffFn3
    :: forall eff this a b c r
    . String
    -> this
    -> a
    -> b
    -> c
    -> Eff eff r

foreign import data JsObject :: Type

selectMaybes :: forall a. a -> JsObject
selectMaybes obj = unsafePartial $ selectMaybesImpl isJust fromJust obj

foreign import selectMaybesImpl
    :: forall a. (Maybe a -> Boolean) -> (Maybe a -> a) -> a -> JsObject
