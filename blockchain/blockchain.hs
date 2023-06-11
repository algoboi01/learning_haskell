module Blockchain where

-- https://www.youtube.com/watch?v=ctfZ6DwFiPg&list=PLJ3w5xyG4JWmBVIigNBytJhvSSfZZzfTm&index=6

data Chain = GenesisBlock| Block Chain Txs deriving Show

type Txs = Int 

chain0 = GenesisBlock
chain1 = Block chain0 4

chainLength :: Chain -> Int
chainLength GenesisBlock = 0
chainLength (Block c _) = chainLength c + 1

hasBlock :: Txs -> Chain -> Bool
hasBlock x GenesisBlock = False
hasBlock x (Block c t) = 
    x == t || hasBlock x c