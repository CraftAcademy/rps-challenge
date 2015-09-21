require 'spec_helper'
require 'byebug'

feature 'game setup' do

  before {visit '/'}

  scenario 'is successful' do
    expect(page.status_code).to be 200
  end

  scenario 'welcomes the player to the game' do
    expect(page).to have_content "Welcome!"
  end

  scenario 'displays a user name input form' do
    expect(page).to have_selector "form[action='/play']"
    expect(page).to have_selector "input[type='text']"
    expect(page).to have_selector "input[name='name']"
  end

  scenario 'i am routed to the /play page when entering a name and pushing continue' do
    fill_in 'name', :with => 'Gustaf'
    click_on 'Continue'
    expect(page.current_path).to eq '/play'
    expect(page.status_code).to eq 200
  end

  scenario 'The page remembers my name' do
    fill_in 'name', :with => 'Gustaf'
    click_on 'Continue'
    expect(page).to have_content "Gustaf"
  end

  scenario 'I need to put in a name to continue' do
    fill_in 'name', :with => nil
    click_on 'Continue'
    expect(page).to_not have_content "Gustaf"
  end

end

feature 'starting a game' do

  before do
    visit '/'
    fill_in 'name', :with => 'Gustaf'
    click_on 'Continue'
  end

  scenario 'displays a input form with options rock, paper, scissors' do
    expect(page).to have_selector "form[action='/result']"
    expect(page).to have_selector "input[type='radio']"
    expect(page).to have_selector "input[name='item']"
    expect(page).to have_selector "input[value='rock']"
    expect(page).to have_selector "input[value='paper']"
    expect(page).to have_selector "input[value='scissors']"
  end

  scenario 'I am presented with choices rock, paper and scissors' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'making a choice and pushing play routes me to the /result page' do
    fill_in 'item', with: 'rock'
    click_button 'Play'
    expect(page.current_path).to eq'/result.erb'
    expect(page.status_code).to eq 200
  end

end

feature 'game results' do

 before do
    visit '/'
    fill_in 'name', :with => 'Gustaf'
    click_on 'Continue'
    fill_in 'item', with: 'rock'
    click_button 'Play'
  end

  scenario 'user beats computer with rock over scissors' do
    allow(RockPaperScissors).to_receive and return 3
    expect(page).to have_content 'You won'
  end

  scenario 'user looses vs computer with rock over paper' do
    allow(RockPaperScissors).to_receive and return 3
    expect(page).to have_content 'You won'
  end

   scenario 'user has a draw vs computer with rock over rock' do
    allow(RockPaperScissors).to_receive and return 3
    expect(page).to have_content 'It\'s a draw'
  end

end