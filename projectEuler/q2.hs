module Problem_2 where

-- slow
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main = do
    let evenFib = [fib x | x <- [1..33], even (fib x), fib x < 4000000]
    print (sum evenFib)

-- way faster
fibo :: Integer -> Integer -> [Integer]
fibo a b = a : fibo b (a + b)

main1 = do
    let evenFib = [x | x <- take 35 $ fibo 0 1 , even x, x < 4000000]
    print (sum evenFib)
