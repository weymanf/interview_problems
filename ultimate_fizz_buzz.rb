def fizzbuzz(a,b,n)
    (1..n).to_a.map do | num |
        fizzorbuzz = ""
        fizzorbuzz += "F" if num % a == 0
        fizzorbuzz += "B" if num % b == 0
        fizzorbuzz += "#{num}" if fizzorbuzz == ""
        fizzorbuzz
    end.join(" ")
end