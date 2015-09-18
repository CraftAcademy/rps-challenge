require "game.rb"

describe Game do

    it "Gets the computer's move" do
      allow(Game).to receive(:computer_move).and_return("Rock")
    end

    describe "The computer loses the game" do
      it "if the player picks 'Rock' and the computer picks 'Scissors'" do
        allow(Game).to receive(:computer_move).and_return("Scissors")
        result = Game.play("Rock")
        expect(result).to eq("You won!")
      end
    end

end
