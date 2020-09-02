def fromRoman(romanNumber)
    # Replace the following line with the actual code!
    if !romanNumber.match? /\A[MDCLXVI`-]*\Z/
		raise TypeError
	end
	x=romanNumber.split(//)
	answer = 0
for char in x
    case
    when char == "M"
        answer+=1000
    when char == "D"
        answer+=500
    when char == "C"
        answer+=100
    when char == "L"
        answer+=50
    when char == "X"
        answer+=10
    when char == "V"
        answer+=5
    when char == "I"
        answer+=1
    end
end
return answer
end

def toRoman(arabicNumber)
    # Replace the following line with the actual code!
    x = arabicNumber
	answer = ""
	if x <= 0 or x > 3999
		raise RangeError
	end
	while x > 0 and x < 3999
		case

		when x >= 1000
			answer  += "M"*(x/1000)
			x = x%1000

		when x >= 500
			answer  += "D"*(x/500)
			x = x%500

		when x >= 100
			answer  += "C"*(x/100)
			x = x%100

		when x >= 50
			answer  += "L"*(x/50)
			x = x%50

		when x >= 10
			answer  += "X"*(x/10)
			x = x%10

		when x >= 5
			answer  += "V"*(x/5)
			x = x%5

		when x >= 1
			answer  += "I"*(x/1)
			x = x%1

		end
	end
	return answer
end