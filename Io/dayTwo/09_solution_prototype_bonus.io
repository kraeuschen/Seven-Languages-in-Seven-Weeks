myList := List clone do(
    dim := method(x, y, self setSize(y) mapInPlace(list() setSize(x)))
    set := method(x, y, value, self at(y) atPut(x, value))
    get := method(x, y, self at(y) at(x))
    
    transponse := method(
	transponsedList := myList clone() dim(self size, self first size)
        for (x, 0, self size -1,
            for (y, 0, self first size-1,
               transponsedList set(x, y, get(y, x))
            )
        )
        return transponsedList
    )
)

list = myList clone dim(2, 3)
list set(0, 0, "A")
list set(1, 0, "B")
list set(0, 1, "C")
list set(1, 1, "D")
list set(0, 2, "E")
list set(1, 2, "F")

list println
list transponse println
