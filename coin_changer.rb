class CoinChanger 
	def make_change_for(amount)
		[25,10,5,1].inject([]) do |result, coin|
			result + coins_for_amount(coin, remaining_amount(amount, result))
		end
	end
	
	private
	
	def remaining_amount(initial_amount, coins_so_far)
		initial_amount - (coins_so_far.inject(&:+) || 0)
	end	
	
	def coins_for_amount(coin, amount)
		coins = amount / coins
		coins.times.map { coin }	
	end	
end 	