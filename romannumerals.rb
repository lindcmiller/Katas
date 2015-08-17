class RomanNumerals 
	
	Symbols = [
		["M",1000], ["D",500], ["C",100], ["L",50], ["X",10], ["V",5], ["I",1]
	]
	
	def convert(number)
		result = ""
		
		Symbols.each do | roman, arabic |
			while number >= arabic
				result += roman
				number -= number	
			end
		end
		
		result	
	end
end		