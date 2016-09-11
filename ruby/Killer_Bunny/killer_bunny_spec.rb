# RSPEC
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>


require_relative 'killerbunny'

describe KillerBunny do 
  let (:killer_word) {KillerBunny.new}

    it "stores the secret word given on initialization" do
    expect(secret_word.).to eq [""]
  end

  it "checks to see if letter is included in secret word" do
    expect(killer_word.include?("b")).to eq true
    expect(killer_word.guessed_letter).to eq "b----"
  end

  it "checks to see if guess word has dashes = to the secret word" do
    expect(killer_word.guess_word).to eq "-----"
  end

  it "checks to see what happens when a guessed letter is not included in the word" do
    expect(killer_word.include?("x")).to eq false
  end

  it "checks to see if guess turns and guess spaces are set and min and max levels" do
    expect(killer_word.include?("b")).to eq true
    expect(killer_word.guess_spaces).to eq 1
    expect(killer_word.guess_turns).to eq 5
  end


##This test isn't testing and I don't know how to test for it, sadly! 

  # it "checks to see that when a guessed letter has already been guessed, no guess turns are removed." do
  #   expect(killer_word.include?("b")).to eq true
  #   expect(killer_word.guessed_letter.include?("b")).to eq 
  # end


  it "checks to make sure winning status functions" do
    expect(killer_word.include?("b")).to eq true
    expect(killer_word.include?("u")).to eq true
    expect(killer_word.include?("n")).to eq true
    expect(killer_word.include?("n")).to eq true
    expect(killer_word.include?("y")).to eq true
    expect(killer_word.winner?).to eq true
  end

  it "checks to make sure losing status functions" do
    expect(killer_word.include?("b")).to eq true
    expect(killer_word.include?("u")).to eq true
    expect(killer_word.include?("n")).to eq true
    expect(killer_word.include?("n")).to eq true
    expect(killer_word.include?("x")).to eq false
    expect(killer_word.winner?).to eq false
  end
end