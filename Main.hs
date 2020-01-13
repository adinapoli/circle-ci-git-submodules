module Main where

import Test.Tasty
import Test.Tasty.HUnit

import MySubmodule (exposed)

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [unitTests]

--
unitTests = testGroup "Unit tests"
  [ testCase "Exposed" $
      exposed `compare` 43 @?= EQ
  ]
