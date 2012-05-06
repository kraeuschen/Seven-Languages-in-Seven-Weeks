number := Random value(1, 100) round
counter := 0
tries := 10;

"guess a number between 1 and 100" println
#"hint: " .. number println

while (counter < tries,
    guess := File standardInput readLine("Enter your guess (" .. counter+1 .. "/" .. tries .. "): ") asNumber() 
    if (guess == number, break)
    counter := counter + 1
)

if (counter < tries, "you have won", "you suck, right answer was #" .. number) println

