require 'computer'

describe Computer do

  let(:computer){Computer.new}

  it "can pick Paper" do
  		allow(computer).to receive(:pick).and_return("Paper")
 	 	expect(computer.pick).to eq "Paper"
  end 
  
  it "can pick Rock" do
  		allow(computer).to receive(:pick).and_return("Rock")
  		expect(computer.pick).to eq "Rock"
  end

  it "can pick scissors" do 
  		allow(computer).to receive(:pick).and_return("scissors")
  		expect(computer.pick).to eq "scissors"
  end
end

# I want computer to be able to make a move