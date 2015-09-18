require "game.rb"

describe Game do

    it "gets the computer's move" do
      allow(Game).to receive(:computer_move).and_return("R")
    end

end
