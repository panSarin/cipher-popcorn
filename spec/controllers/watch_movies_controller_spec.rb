require_relative '../rails_helper'

describe WatchMoviesController do
  describe 'Adding to watchlist' do
    it 'add item to watchlist' do
      request.session[:current_user_id] = 4
      expect(post :create, collectionId: 3).to change{ WatchMovie.count }.by(1)
      expect(WatchMovie.last.collectionId).to eq(3)
      response.code.should eq("200")
    end
  end
end
