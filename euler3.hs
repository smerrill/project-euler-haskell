# Divisors divide evenly into a number.
let getDivisors n = [x | x <- [1..n], mod n x == 0]
# A number is prime if it is greater than one and has no other divisors.
let isPrime n = getDivisors n == [1,n]
let getPrimeDivisors = filter isPrime getDivisors n

last (getPrimeDivisors 600851475143)

