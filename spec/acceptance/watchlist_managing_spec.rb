require_relative 'acceptance_helper'

feature 'Managing your watchlist' do
  context ' from search results list ' do
    before :each do
      user = create :user
      login_as(user, scope: user)
    end

    scenario 'add movie to user watchlist' do
      SearchForMovies.any_instance.stub(:process).and_return([
        { trackName: 'Alice from Oz', artistName: 'Wizard?', collectionId: 1},
        { trackName: '7 samurais', artistName: 'Kurosawa', collectionId: 2}])
      visit movies_path
      click_on 'Search'
      within :css, "tr#2" do
        click_on 'Add to my watchlist'
      end
      expect(page).to have_content('You added 7 samurais to your watchlist')
    end


  end

end
