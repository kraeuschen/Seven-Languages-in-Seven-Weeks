List myAverage := method(
  total := 0
  self foreach(i, v, if(v type == "Number", total := total + v, Exception raise("#{v} is not a Number" interpolate)))
  total / self size
)

list(1, 4, 27, 5) myAverage println
list("A", 1, 4, 27, 5) myAverage println

