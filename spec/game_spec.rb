require "game.rb"

describe Game do

  let(:game) { Game.new }

  context "Play Game" do

    it "is a kind of Game" do
      expect(game).to be_a_kind_of(Game)
    end

  end

end
