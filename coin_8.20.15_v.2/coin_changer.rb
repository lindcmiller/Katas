class CoinChanger
  def make_change_for(remainder)
    result = []
    [25,10,5,1].each do |coin|
      while remainder >= coin
        result << coin
        remainder -= coin
      end
  end
  result
end
