class RomanNumerals 
	
	def convert(number)
		result = ""
		
		while number >=1
			result << "I"
			number -= 1
		end	
		return result
	end	
end