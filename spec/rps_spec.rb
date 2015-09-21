require 'rps'

class RockPaper; end

describe 'game logic' do

  subject {RockPaper.new}

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

  it 'computer can choose a random item' do
    computers_choice
    expect(computers_choice).to eq 1..3
  end

  it 'player beats computer with rock over scissor' do
    allow(subject).to receive(:computers_choice).and_return 3
    expect(subject.play(1)).to eq "You won!"
  end

  it 'player looses vs computer with paper over rock' do
    allow(subject).to receive(:computers_choice).and_return 1
    expect(subject.play(2)).to eq "You lost!"
  end

  it 'player have a draw vs computer with rock over rock' do
    allow(subject).to receive(:computers_choice).and_return 1
    expect(subject.play(1)).to eq "It's a draw"
  end

end