require 'spec_helper'
require 'byebug'

feature 'Starting a new game' do
  scenario 'I am greeted' do
    visit '/'
    expect(page).to have_content "Welcome!"
  end

  scenario 'I am asked to pass in my name in a form and press continue' do
      visit '/'
      fill_in 'name', :with => 'Gustaf'
      click_on 'Continue'
      expect(page).to have_content "Gustaf"
    end

    scenario 'I need to put in a name to continue' do
      visit '/'
      fill_in 'name', :with => nil
      click_on 'Continue'
      expect(page).to_not have_content "Gustaf"
    end

    scenario 'I am presented with choices rock, paper and scissors' do
      visit '/'
      fill_in 'name', :with => 'Gustaf'
      click_on 'Continue'
      expect(page).to have_content 'Rock'
      expect(page).to have_content 'Paper'
      expect(page).to have_content 'Scissors'
    end

    scenario 'i can make a choice and click play button' do
      visit '/play'
      select 'rock', :from => 'item'
      click_on 'Play'
      expect(current_path).to eq'/result.erb'
    end

    xscenario 'i can win' do
      visit '/play'
      fill_in 'item', :with => 'rock'
      click_on 'submit'
      allow(computers_choice).to_return 3
      expect(page).to have_content 'You won'
    end

    # xscenario 'i can loose' do
    #   visit '/play'
    #   fill_in 'item', :with => 'rock'
    #   click_on 'submit'
    #   allow(metoden_play)and_receive 2
    #   expect(page).to have_content 'You loose'
    # end

    #  xscenario 'i can have draw' do
    #   visit '/play'
    #   fill_in 'item', :with => 'rock'
    #   click_on 'submit'
    #   allow(metoden_play)and_receive 1
    #   expect(page).to have_content 'It is a draw'
    # end

end