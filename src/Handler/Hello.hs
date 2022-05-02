module Handler.Hello where

import Data.Aeson
import Import
import Yesod
import Data.Text

getHelloR :: Handler Text 
getHelloR = pure "hello world from yesod"