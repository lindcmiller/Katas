require './roman_numeral_math'

describe RomanMath do
	let(:math_converter) { RomanMath.new }
	it "converts sum of numerals X and X to number 20" do
		expect(math_converter.solve("X" + "X")).to eq(20)
	end
	it "converts sum of numerals X and X multiplied by IV to number 50" do
		expect(math_converter.solve_equation("X" + "X" * "IV")).to eq(50)
	end
	it "converts sum of numerals X and X multiplied by IV and subtracting III to number 47" do
		expect(math_converter.solve_equation("X" + "X" * "IV")).to eq(47)
	end
	it "converts product of numerals X and X divided by II to number 50" do
		expect(math_converter.solve_equation("X" * "X" / "II")).to eq(50)
	end
	it "converts product of numerals X and X and II to number 200" do
		expect(math_converter.solve_equation("X" * "X" * "II")).to eq(200)
	end
	it "converts quotient of numerals L and V to number 10" do
		expect(math_converter.solve_equation("L" / "V")).to eq(10)
	end
end
