myList := List clone do(
    dim := method(x, y, self setSize(y) mapInPlace(list() setSize(x)))
    set := method(x, y, value, self at(y) atPut(x, value))
    get := method(x, y, self at(y) at(x))
)

list = myList clone dim(2, 3)

list println

list set(0, 0, "A")
list set(1, 0, "B")
list set(0, 1, "C")
list set(1, 1, "D")
list set(0, 2, "E")
list set(1, 2, "F")

list println

list get(0,0) println
list get(1,0) println
list get(0,1) println
list get(1,1) println
list get(0,2) println
list get(1,2) println
