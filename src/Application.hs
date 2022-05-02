{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Application where

import Control.Monad.Logger
import Handler.Hello
import Import
import Yesod

mkYesodDispatch "App" resourcesApp

appMain :: IO ()
appMain = runStderrLoggingT $ do
  pool <- createPostgresqlPool "host=localhost port=5432 dbname=bankservice" 10
  lift $ warp 3003 $ App pool
