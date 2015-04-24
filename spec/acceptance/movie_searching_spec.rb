require_relative 'acceptance_helper'

feature 'Movie searching' do
  before :each do
    user = create :user
    login_as(user, scope: user)
  end

  scenario 'by title' do
    visit movies_path
    select 'Title', from: 'Attribute'
    fill_in 'Term', with: 'Terminator'
    click_on 'Search'
    expect(page).to have_content('James Cameron')
    expect(page).to have_content('Your movies result')
  end

end
