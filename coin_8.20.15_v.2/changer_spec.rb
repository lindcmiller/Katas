require './coin_changer'

describe CoinChanger do
  let(:changer) { CoinChanger.new }
  it "makes no change for no money" do
    expect(changer.make_change_for(0)).to eq[]
  end
  it "gives a penny for 1 cent" do
    expect(changer.make_change_for(1)).to eq[1]
  end
  it "gives pennies for 2 cents" do
    expect(changer.make_change_for(2)).to eq[1,1]
  end
  it "gives nickels for 5 cents" do
    expect(changer.make_change_for(5)).to eq[5]
  end
  it "gives nickels and pennies for 6 cents" do
    expect(changer.make_change_for(6)).to eq[5,1]
  end
  it "gives dimes for 10 cents" do
    expect(changer.make_change_for(10)).to eq[10]
  end
  it "gives quarters for 25 cents" do
    expect(changer.make_change_for(25)).to eq[25]
  end
  it "gives lots of change for close to a dollar" do
    expect(changer.make_change_for(99)).to eq[25,25,25,10,10,1,1,1,1]
  end
  it "gives quarters for a dollar" do
    expect(changer.make_change_for(100)).to eq[25,25,25,25]
  end
end
