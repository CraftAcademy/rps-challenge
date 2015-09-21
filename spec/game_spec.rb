require "game.rb"

describe Game do

    it "Gets the computer's move" do
      allow(Game).to receive(:computer_move).and_return("Rock")
    end

    describe "The player wins the game" do
      it "if the player picks 'Rock' and the computer picks 'Scissors'" do
        allow(Game).to receive(:computer_move).and_return("Scissors")
        result = Game.play("Rock")
        expect(result).to eq("You won!")
      end

      it "if the player picks 'Paper' and the computer picks 'Rock'" do
        allow(Game).to receive(:computer_move).and_return("Rock")
        result = Game.play("Paper")
        expect(result).to eq("You won!")
      end

      it "if the player picks 'Scissors' and the computer picks 'Paper'" do
        allow(Game).to receive(:computer_move).and_return("Paper")
        result = Game.play("Scissors")
        expect(result).to eq("You won!")
      end
    end

    describe "The player loses the game" do
      it "if the player picks 'Scissors' and the computer picks 'Rock'" do
        allow(Game).to receive(:computer_move).and_return("Rock")
        result = Game.play("Scissors")
        expect(result).to eq("Computer won.")
      end

      it "if the player picks 'Rock' and the computer picks 'Paper'" do
        allow(Game).to receive(:computer_move).and_return("Paper")
        result = Game.play("Rock")
        expect(result).to eq("Computer won.")
      end

      it "if the player picks 'Paper' and the computer picks 'Scissors'" do
        allow(Game).to receive(:computer_move).and_return("Scissors")
        result = Game.play("Paper")
        expect(result).to eq("Computer won.")
      end
    end

end
