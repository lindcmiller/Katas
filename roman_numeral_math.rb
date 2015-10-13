class RomanMath
  attr_reader :values, :operators, :solve_equation
  attr_accessor :equation

	Symbols = [
		["M", 1000], ["D", 500], ["C", 100], ["L", 50], ["X", 10], ["V", 5], ["I", 1]
	]

  def solve(equation)
  	@equation = equation.split(" ")
  	# @values = @equation.select.each_with_index { |_, i| i.odd? }
  	# @operators = @equation.select.each_with_index { |_, i| i.even? }
  	# @values = @values.map{ |numeral| convert(numeral)}

  	@equation.each_with_index do |value, index|
  		if index.even?
  			@equation[index] = @values.shift
  		end
  	end
  	solve_equation
  end

  def convert(numeral) # to number
		result = ""
		Symbols.each do | roman, arabic |
			while numeral >= arabic
				result += arabic
				numeral -= numeral
			end
		end
		result
  end

  def solve_equation # with order of operations
  	while @equation.include? "*" do
  		perform_math(@equation.index("*"))
  	end
  	while @equation.include? "/" do
  		perform_math(@equation.index("/"))
  	end
    while @equation.include? "+" do
      perform_math(@equation.index("+"))
    end
  	while @equation.include? "-" do
  		perform_math(@equation.index("-"))
  	end
  	@equation = @equation[0]
  end

  # def perform_math(op)
  #   newval = @equation[op-1].send(@equation[op], @equation[op+1])
  #   @equation[op] = newval
  #   @equation.slice!(op-1)
  #   @equation.slice!(op)
  # end

end
