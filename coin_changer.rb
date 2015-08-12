class CoinChanger
  def make_change_for(amount)
    result = Array.new
    remainder = amount
    [50, 25, 10, 5, 1].each do |coin|
      quantity = remainder / coin
      remainder = remainder % coin
      quantity.times { result << coin }
    end
    return result
  end
end
