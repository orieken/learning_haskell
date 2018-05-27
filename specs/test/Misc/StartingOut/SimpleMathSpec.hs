module Misc.StartingOut.SimpleMathSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "SimpleMath" $ do
    it "2 + 15 = 17" $
      2 + 15 `shouldBe` 17
    it "49 * 100 = 4900" $
      49 * 100 `shouldBe` 4900
    it "1892 - 1472 = 420" $
      1892 - 1472 `shouldBe` 420
    it "5 / 2 = 2.5" $
      5 / 2 `shouldBe` 2.5
