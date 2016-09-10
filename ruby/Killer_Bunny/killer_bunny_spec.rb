



# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>


require_relative 'killerbunny'

describe KillerBunny do 
  let (:secret_word) {KillerBunny.new}

    it "stores the secret word given on initialization" do
    expect(secret_word.).to eq [""]
  end
  
end