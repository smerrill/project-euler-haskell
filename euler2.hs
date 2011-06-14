# So this version _should_ work, but in practice it is WAY too slow.
# let fib 0 = 0
# let fib 1 = 1
# let fib n = fib (n-1) + fib (n-2)

# But this way works without taking forever by using a lazy memoized list.
let fib n = fibs !! n where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

# This is inefficient. fib 100 is WAY too big.
# I don't know enough about Haskell yet to take from a lazy list UNTIL x.
sum(filter even [fib x | x <- [1..100], fib x < 4000000])

