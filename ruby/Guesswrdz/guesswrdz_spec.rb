# our Guesswrdz game should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'guesswrdz'

describe Calculator do
  let(:game) { Guesswrdz.new }

  it "adds two integers" do
    expect(game.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    expect(game.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(game.multiply(2,3)).to eq 6
  end
  #test
  it "divides two integers" do
    expect(game.divide(10,2)).to eq 5
  end
end