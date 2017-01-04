module Main(mengDouble, main) where

mengDouble :: (Num a) => a -> a
mengDouble x = 2*x

main = do
    input <- getLine
    putStrLn . show . mengDouble . read $ input
