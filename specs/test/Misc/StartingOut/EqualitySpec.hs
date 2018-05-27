module Misc.StartingOut.EqualitySpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Equality" $ do
    it "5 == 5" $
       5 == 5 `shouldBe` True
    it "1 == 0" $
       1 == 0 `shouldBe` False
    it "5 /= 5" $
       5 /= 5 `shouldBe` False
    it "5 /= 4" $
       5 /= 4 `shouldBe` True
    it " 'hello == 'hello' "$
       "hello" == "hello" `shouldBe` True