class WatchMoviesController < AuthenticatedController
  def create
    WatchMovie.create(collectionId: params[:collectionId], user_id: current_user.id)
  end
end
