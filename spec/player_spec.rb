require 'player.rb'

describe Player do

  let(:player){Player.new("David")}
  
  it 'has a name' do
    player.name
    expect(player.name).to eq "David"
  end

  it 'can take a turn' do
    player.pick("paper")
    expect(player.pick("paper")).to eq "paper"
  end
end

