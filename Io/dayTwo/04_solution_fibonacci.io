fib := method(number,
  prev0 := 0
  prev1 := 0
  prev2 := 1
  for(i, 1, number,
    prev0 = prev1
    prev1 = prev2
    prev2 = prev0 + prev2
  )
  prev1
)

fib(1) println
fib(4) println
fib(8) println
