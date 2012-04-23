class Roman
    # overwrite missing name method
    def self.method_missing name, *args
        # convert nbame to string
        roman = name.to_s

        # replace strings to simple ones, we can calculate with
        roman.gsub!("IV", "IIII")
        roman.gsub!("IX", "VIIII")
        roman.gsub!("XL", "XXXX")
        roman.gsub!("XC", "LXXXX")

        # simple count of our chars in string
        (roman.count("I") +
         roman.count("V") * 5 +
         roman.count("X") * 10 +
         roman.count("L") * 50 +
         roman.count("C") * 100)
    end
end

puts Roman.X
puts Roman.XC
puts Roman.XII
puts Roman.X
