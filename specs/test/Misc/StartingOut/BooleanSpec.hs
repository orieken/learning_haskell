module Misc.StartingOut.BooleanSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Boolean" $ do
    it "True && True" $
       True && True `shouldBe` True
    it "True && False" $
       True && False `shouldBe` False
    it "False || True" $
       False || True `shouldBe` True
    it "not False" $
       not False `shouldBe` True
    it "not (True && True)" $
       not (True && True) `shouldBe` False