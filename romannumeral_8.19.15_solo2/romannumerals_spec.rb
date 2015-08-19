require './romannumerals'

describe RomanNumerals do
	let(:converter) { RomanNumerals.new }
	it "converts number 1 to numeral I" do
		expect(converter.convert(1)).to eq("I")
	end
	it "converts number 2 to numeral II" do
		expect(converter.convert(2)).to eq("II")
	end
	it "converts number 4 to numeral IV" do
		expect(converter.convert(4)).to eq("IV")
	end
	it "converts number 9 to numeral IX" do
		expect(converter.convert(9)).to eq("IX")
	end
	it "converts number 18 to numeral XVIII" do
		expect(converter.convert(18)).to eq("XVIII")
	end
	it "converts number 37 to numeral XXXVII" do
		expect(converter.convert(37)).to eq("XXXVII")
	end
	it "converts number 75 to numeral LXXV" do
		expect(converter.convert(75)).to eq("LXXV")
	end
	it "converts number 225 to numeral CCXXV" do
		expect(converter.convert(225)).to eq("CCXXV")
	end
	it "converts number 450 to numeral CDL" do
		expect(converter.convert(450)).to eq("CDL")
	end
	it "converts number 500 to numeral D" do
		expect(converter.convert(500)).to eq("D")
	end
	it "converts number 700 to numeral DCC" do
		expect(converter.convert(700)).to eq("DCC")
	end
	it "converts number 900 to numeral CM" do
		expect(converter.convert(900)).to eq("CM")
	end
	it "converts number 1000 to numeral M" do
		expect(converter.convert(1000)).to eq("M")
	end
	it "converts number 3999 to numeral MMMCMXCIX" do
		expect(converter.convert(3999)).to eq("MMMCMXCIX")
	end
end
