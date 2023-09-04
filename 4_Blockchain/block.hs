module Block where

data Block = Index Integer
           | TimeStamp Integer
           | Data String
           | Previous_Hash String 
           | Nonce Integer
 deriving Show


