(8 / 0) println
(8 / 2) println

Number division := Number getSlot("/")

Number / := method(divisor,
    if (divisor == 0, 0, self division(divisor))
)

(8 / 0) println
(8 / 2) println
