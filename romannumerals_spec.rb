require './romannumerals'

describe RomanNumerals do
	let(:converter) { RomanNumerals.new }
	it "converts number 1 to numeral I" do
		expect (converter.convert(1)).to eq("I")
	end	
end	