require 'spec_helper'

feature 'Starting a new game' do
  scenario 'I am greeted' do
    visit '/'
    expect(page).to have_content "Hello and welcome - Let's play some Rock, Paper, Scissors!"
  end

  scenario 'I am asked to pass in my name in a form and press submit' do
      visit '/'
      fill_in 'name', :with => 'Gustaf'
      click_on 'submit'
      expect(page).to have_content "Gustaf"
    end

    scenario 'I need to put in a name to continue' do
      visit '/'
      fill_in 'name', :with => nil
      click_on 'submit'
      expect(page).to_not have_content "Gustaf"
    end

    scenario 'I am presented with choices rock, paper and scissors' do
      visit '/'
      fill_in 'name', :with => 'Gustaf'
      click_on 'submit'
      expect(page).to have_content 'Rock'
      expect(page).to have_content 'Paper'
      expect(page).to have_content 'Scissors'
    end

    scenario 'i can make a choice and click submit button' do
      visit '/play'
      fill_in 'item', :with => 'rock'
      click_on 'submit'
      expect(page).to have_content 'You choosed rock'
    end

    xscenario 'i can win' do
      visit '/play'
      fill_in 'item', :with => 'rock'
      click_on 'submit'
      allow(metoden_play)and_receive 3
      expect(page).to have_content 'You won'
    end

    xscenario 'i can loose' do
      visit '/play'
      fill_in 'item', :with => 'rock'
      click_on 'submit'
      allow(metoden_play)and_receive 2
      expect(page).to have_content 'You loose'
    end

     xscenario 'i can have draw' do
      visit '/play'
      fill_in 'item', :with => 'rock'
      click_on 'submit'
      allow(metoden_play)and_receive 1
      expect(page).to have_content 'It is a draw'
    end

end