module Misc.StartingOut.PrefixSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Prefix" $ do
    context "succ" $ do
      it "succ 8 -> 9" $
        succ 8 `shouldBe` 9
    context "min/max" $ do
      it "min 9 10 -> 9" $
        min 9 10 `shouldBe` 9
      it "min 3.4 3.2 -> 3.2" $
        min 3.4 3.2 `shouldBe` 3.2
      it "max 100 101 -> 101" $
        max 100 101 `shouldBe` 101