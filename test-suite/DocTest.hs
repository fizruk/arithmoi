module Main (main) where

import           System.FilePath.Glob (glob)
import           Test.DocTest         (doctest)

main :: IO ()
main = glob "Math/**/*.hs" >>= doctest . (opts ++)

opts :: [String]
opts =
  [ "-optP-include"
  , "-optPdist/build/autogen/cabal_macros.h"
  , "-fobject-code" ]

