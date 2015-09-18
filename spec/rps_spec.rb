require 'rps'

describe 'game' do


  it 'player can choose rock' do
    input_ok?("rock")
    expect(input_ok?("rock")).to eq true

  end

  it 'player can choose paper' do
    input_ok?("paper")
    expect(input_ok?("paper")).to eq true

  end

  it 'player can choose scissors' do
    input_ok?("scissors")
    expect(input_ok?("scissors")).to eq true

  end

  it 'player cant choose other input' do
    input_ok?("knife")
    expect(input_ok?("knife")).to eq false
  end

   it 'player chooses wrong input raises an error' do
    play("knife")
    expect(play("knife")).to eq 'Wrong input'
  end

  xit 'computer can choose a random item' do

  end

  xit 'player can win' do

  end

  xit 'player can loose' do

  end

end