Object ancestors := method(
    prototype := self proto
    if(prototype != Object,
    writeln("Slot of ", prototype type, "\n--------")
    prototype slotNames foreach(slotName, writeln(slotName))
    writeln
    prototype ancestors)
)

Animal := Object clone
Animal speak := method("ambigous animal noise" println)

Duck := Animal clone
Duck speak := method("quak" println)

Duck walk := method("waddle" println)

disco := Duck clone
disco ancestors

