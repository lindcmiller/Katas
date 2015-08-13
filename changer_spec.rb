require './coin_changer'

describe CoinChanger do 
	let(:changer) { CoinChanger.new }
		it "gives penny for 1 cent" do 
			expect(changer.change_maker(1)).to eq[1]
		end
		it "gives pennies for 2 cents" do 
			expect(changer.change_maker(2)).to eq[1,1]
		end
		it "gives nickels for 5 cents" do 
			expect(changer.change_maker(5)).to eq[5]
		end
		it "gives dimes for 10 cents" do
			expect(changer.change_maker(10)).to eq[10]
		end
		it "gives quarters for 25 cents" do
			expect(changer.change_maker(25)).to eq[25]
		end
		it "gives quarters for 1 dollar" do
			expect(changer.change_maker(100)).to eq[25,25,25,25]
		end
		it "gives lots of change for nearly a dollar" do
			expect(changer.change_maker(93)).to eq[25,25,25,10,5,1,1,1]
		end
end									