module Misc.List.ListSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Prelude.head" $ do
    it "returns the first element of a list" $ do
      head[23 ..] `shouldBe` (23 :: Int)