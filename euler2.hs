# So this version _should_ work, but in practice it is WAY too slow.
# let fib 0 = 0
# let fib 1 = 1
# let fib n = fib (n-1) + fib (n-2)

# Easier way. Make the lazy list of all fibonacci numbers.
let fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

# Duh - takeWhile. I knew that from Scala.
sum (filter even (takeWhile (< 4000000) fibs))

