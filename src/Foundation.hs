{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
module Foundation where

import Data.Pool
import Database.Persist.Postgresql
import Orphans ()
import Yesod

newtype App = App
  { appConnectionPool :: Pool SqlBackend
  }

mkYesodData "App" $(parseRoutesFile "config/routes.yesodroutes")

instance Yesod App

instance YesodPersist App where
  type YesodPersistBackend App = SqlBackend
  runDB action = do
    pool <- getsYesod appConnectionPool
    runSqlPool action pool
