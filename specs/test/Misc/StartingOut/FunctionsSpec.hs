module Misc.StartingOut.FunctionsSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import StartingOut.DoubleMe

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Functions" $ do
    context "doubleMe" $ do
      it "doubleMe 9 -> 18" $
        doubleMe 9 `shouldBe` 18
      it "doubleMe 8.3 -> 16.6" $
        doubleMe 8.3 `shouldBe` 16.6
    context "doubleUs" $ do
      it "doubleUs 4 9 -> 26" $
        doubleUs 4 9 `shouldBe` 26
      it "doubleUs 2.3 34.2 -> 73.0" $
        doubleUs 2.3 34.2 `shouldBe` 73.0
    context "using Both" $ do
      it "doubleUs 28 88 + doubleMe 123 -> 478" $
        doubleUs 28 88 + doubleMe 123 `shouldBe` 478