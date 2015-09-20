require 'spec_helper'

feature 'Getting a new game started' do
  
  	scenario ' - greeting' do
    	visit '/'
    	expect(page).to have_content "Hey, let´s play some Rock, Paper, and Scissors!"
  	end

 end
