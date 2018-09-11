{-
{-# OPTIONS_GHC -F -pgmF hspec-discover #-}
-}

import Test.Hspec
import Lib
import GridData

main :: IO ()
main = hspec $ do
  describe "formateGrid" $ do
    it "Should concatenate every line with a newline" $ do
      (formatGrid ["abc", "def", "ghi"]) `shouldBe` "abc\ndef\nghi\n"


  describe "findWord" $ do
      it "Should find words that exists on the Gird" $ do
        (findWord grid "HASKELL") `shouldBe` Just "HASKELL"
        (findWord grid "PERL") `shouldBe` Just "PERL"
      it "Should find words that do not exists on the Gird" $ do
        (findWord grid "HAMSTER") `shouldBe` Nothing


  describe "findWords" $ do
      it "Should find words that exists on the Gird" $ do
        (findWords grid languages) `shouldBe` languages