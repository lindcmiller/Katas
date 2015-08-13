class CoinChanger
	def change_maker(amount)
		result = Array.new
		remaining = amount
		[25,10,5,1].each do |coin|
			quantity = remaining / coin
			remaining = remaining % coin 
			quantity.times { result << coin }
		end	
	return result 
	end
end		
	