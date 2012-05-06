sum_list := method(list, list flatten sum)

sum_list_no_flatten := method(list,
    total := 0
    list foreach(i, v, if(v type == "Number", total := total + v, total := total + v sum)))

arr := list(list(4, 5), list(2, 9), 4, list(16, 17, 18, 8), 27, 5)

sum_list(arr) println
sum_list_no_flatten(arr) println

