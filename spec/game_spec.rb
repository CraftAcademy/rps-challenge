require 'game'

describe Game do
  
  let(:player){Player.new("David")}
  let(:computer){Computer.new}
  let(:game){Game.new(player, computer)}

  #it "should have 2 players on initialisation" do
   # expect(game.players.count).to eq 2
  #end

  it "should know if there is a winner" do
    allow(player).to receive(:pick).and_return "rock" 
    allow(computer).to receive(:pick).and_return "scissors"
    expect(game.winner).to eq "You win!"
 end

  it "should know if there is a draw" do
    allow(player).to receive(:pick).and_return "rock"
    allow(computer).to receive(:pick).and_return "rock"
    expect(game.drawer).to eq "Draw!"
  end

  it "should know if someone loser" do
    allow(player).to receive(:pick).and_return "paper"
    allow(computer).to receive(:pick).and_return "rock"
    expect(game.loser).to eq "Lost!"
  end
end
