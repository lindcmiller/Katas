class CoinChanger 
	def make_change_for(amount)
		result = Values.new 
		remainder = amount
		
		[25,10,5,1].each do |coin|
			quantity = remainder / coin
			quantity = remainder % coin
			quantity.times { result << coin }
		end
		return result
	end
end		
		