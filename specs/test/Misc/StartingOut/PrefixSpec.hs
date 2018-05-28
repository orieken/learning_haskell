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
      it "succ 9 + max 5 4 + 1 -> 16" $
        succ 9 + max 5 4 + 1 `shouldBe` 16
      it "succ 9 + max 5 4 + 1 -> 16" $
        (succ 9) + (max 5 4) + 1 `shouldBe` 16
      it "succ 9 * 10 -> 100" $
        succ 9 * 10 `shouldBe` 100
      it "succ (9 * 10) -> 100" $
        succ (9 * 10) `shouldBe` 91
  describe "Infix" $ do
    it "`div` 92 10 -> 9 " $
      div 92 10 `shouldBe` 9
    it "92 `div` 10 -> 9 " $
      92 `div` 10 `shouldBe` 9