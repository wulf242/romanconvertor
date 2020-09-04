def stringCleaning(rnum)

values = {"IV" => 4, "IX" => 9, "XL" => 40, "XC" => 90, "CD" => 400, "CM" => 900}
totalNum = 0
for v in values
key = v[0]
print key
start_len = rnum.length
rnum = rnum.split(v[0])
rnum = rnum.join()
end_len = rnum.length
diffrence = start_len - end_len
print values[v[0]]
totalNum += values[v[0]]*(diffrence/2)
end
out = {"string" => rnum, "total" => totalNum}
print out["total"]
print out["string"]
return out
end

def fromRoman(romanNumber)
    # Replace the following line with the actual code!

if !romanNumber.match? /\A[MDCLXVI`-]*\Z/
	raise TypeError
end
cleaned = stringCleaning(romanNumber)
romanNumber = cleaned["string"]
	x=romanNumber.split(//)
	answer = cleaned["total"]
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
print answer
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
		
		when x >= 900
			answer  += "CM"*(x/900)
			x = x%900	
		

		when x >= 500
			answer  += "D"*(x/500)
			x = x%500
		
		when x >= 400
			answer  += "CD"*(x/400)
			x = x%400

		when x >= 100
			answer  += "C"*(x/100)
			x = x%100
			
			when x >= 90
			answer  += "XC"*(x/90)
			x = x%90

		when x >= 50
			answer  += "L"*(x/50)
			x = x%50
			
		when x >= 40
			answer  += "XL"*(x/40)
			x = x%40

		when x >= 10
			answer  += "X"*(x/10)
			x = x%10

		when x >= 9
			answer  += "IX"*(x/9)
			x = x%9

		when x >= 5
			answer  += "V"*(x/5)
			x = x%5
			
		when x >= 4
			answer  += "IV"*(x/4)
			x = x%4

		when x >= 1
			answer  += "I"*(x/1)
			x = x%1

		end
	end
	return answer
end