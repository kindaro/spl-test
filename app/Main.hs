{-# LANGUAGE
    LambdaCase
  #-}

module Main where

import Lib
import qualified System.Plugins.Load as SPL

main :: IO ()
main = do
        putStrLn "Start."

        SPL.load "Lib.o" ["dist/build"] [] "integerValue13" >>= \case
            SPL.LoadFailure msg -> putStrLn "Failure."
            SPL.LoadSuccess _ v -> print "Loaded!"

        putStrLn "Finish."
