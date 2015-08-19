class RomanNumerals

  CONVERSION = [
    [3999, "MMMCMXCIX"],
    [1000, "M"],
    [900, "CM"],
    [700, "DCC"],
    [500, "D"],
    [450, "CDL"],
    [225, "CCXXV"],
    [75, "LXXV"],
    [37, "XXXVII"],
    [18, "XVIII"],
    [9, "IX"],
    [4, "IV"],
    [2, "II"],
    [1, "I"]
  ]

  def convert(number)
    result = ""
    CONVERSION.each do |arabic, roman|
      while number >= arabic
        result << roman
        number -= arabic
      end
    end
    result
  end

end
