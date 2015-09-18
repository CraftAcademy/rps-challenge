
# def form_submit(name1, name2)
#   fill_in 'name1', with: name1
#   fill_in 'name2', with: name2
#   click_on 'submit'
# end

feature 'Game Setup' do

  feature 'Start View' do

    background do
      visit '/'
    end

    scenario 'Displays welcome message' do
      expect(page).to have_content 'Welcome to the Rock, Paper, Scissors game!'
    end

    scenario "The 'Play Game!' button routes to '/play'" do
      click_button 'Play Game!'
      expect(current_path).to eq '/play'
    end
  end
end
