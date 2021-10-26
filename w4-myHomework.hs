-- Student ID:   107502541
-- Student Name: Wen-Zone Fu

main =  print "Program start"

-- Execise 1
myTail []    = []
myTail (x:s) = s

-- Execise 2
myLast :: [a] -> a
myLast [x]    = x
myLast (x:s)  = myLast s

-- Execise 3
myReverse []    = []
myReverse [x]   = [x]
myReverse (x:s) = myReverse s++[x]


-- Execise 4
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [ ] = True
isPalindrome  x  = (myReverse  x) == x

-- Execise 5
isPalindromeNRe :: Eq a => [a] -> Bool
isPalindromeNRe [ ]    = True
isPalindromeNRe [a]    = True
isPalindromeNRe (x:s)  = ( x == last s ) && isPalindromeNRe(init s )

