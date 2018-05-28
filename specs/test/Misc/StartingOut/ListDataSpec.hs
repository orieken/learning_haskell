module Misc.StartingOut.ListDataSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import StartingOut.ListData

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Lists" $ do
    context "merge" $ do
      it "combines two number lists" $ do
        merge [1,2,3,4] [9,10,11,12] `shouldBe` [1,2,3,4,9,10,11,12]
      it "combines string lists" $ do
        mergeMore "hello" " " "world" `shouldBe` "hello world"
      it "combines two character lists" $ do
        merge ['w', 'o'] ['o', 't'] `shouldBe` "woot"