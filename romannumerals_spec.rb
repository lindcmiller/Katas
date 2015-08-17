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
	it "converts number 5 to numeral V" do
		expect(converter.convert(5)).to eq("V")
	end			
	it "converts number 7 to numeral VII" do
		expect(converter.convert(7)).to eq("VII")
	end
	it "converts number 10 to numeral X" do
		expect(converter.convert(10)).to eq("X")
	end
	it "converts number 20 to numeral XX" do
		expect(converter.convert(20)).to eq("XX")
	end
	it "converts number 40 to numeral XL" do
		expect(converter.convert(40)).to eq("XL")
	end
	it "converts number 50 to numeral L" do
		expect(converter.convert(50)).to eq("L")
	end			
	it "converts number 52 to numeral LII" do
		expect(converter.convert(52)).to eq("LII")
	end
	it "converts number 71 to numeral LXXI" do
		expect(converter.convert(71)).to eq("LXXI")
	end
	it "converts number 100 to numeral C" do
		expect(converter.convert(100)).to eq("C")
	end
	it "converts number 150 to numeral CL" do 
		expect(converter.convert(150)).to eq("CL")
	end
	it "converts number 500 to numeral D" do
		expect(converter.convert(500)).to eq("D")
	end
	it "converts number 554 to numeral DLIV" do
		expect(converter.convert(554)).to eq("DLIV")
	end	
	it "converts number 600 to numeral DC" do 
		expect(converter.convert(600)).to eq("DC")
	end
	it "converts number 999 to numeral IM" do
		expect(converter.convert(999)).to eq("IM")
	end			
	it "converts number 1000 to numeral M" do
		expect(converter.convert(1000)).to eq("M")
	end					
end	

		