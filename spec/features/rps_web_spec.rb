require 'spec_helper'

feature 'Starting a new game' do
  scenario 'I am greeted' do
    visit '/'
    expect(page).to have_content "Hello and welcome - Let's play some Rock, Paper, Scissors!"
  end
end